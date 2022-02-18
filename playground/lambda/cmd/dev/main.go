package main

import (
	"context"
	"errors"
	"io"
	"log"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"

	"github.com/dnys1/smithy_playground"
)

func main() {
	mux := http.NewServeMux()

	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		for k, v := range smithy_playground.CorsHeaders {
			w.Header().Set(k, v)
		}
		if r.Method == http.MethodOptions {
			return
		}

		idl, err := io.ReadAll(r.Body)
		if err != nil {
			http.Error(w, http.StatusText(http.StatusBadRequest), http.StatusBadRequest)
			return
		}

		ast, status, err := smithy_playground.HandleRequest(r.Context(), string(idl))
		if err != nil {
			http.Error(w, err.Error(), status)
			return
		}

		for k, v := range smithy_playground.CorsHeaders {
			w.Header().Set(k, v)
		}
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(ast))
	})

	srv := &http.Server{
		Addr:              ":8000",
		Handler:           mux,
		ReadTimeout:       5 * time.Second,
		WriteTimeout:      10 * time.Second,
		IdleTimeout:       30 * time.Second,
		ReadHeaderTimeout: 2 * time.Second,
	}

	go func() {
		log.Printf("Serving on localhost%s\n", srv.Addr)
		if err := srv.ListenAndServe(); !errors.Is(err, http.ErrServerClosed) {
			log.Fatal(err)
		}
	}()

	ch := make(chan os.Signal, 1)
	signal.Notify(ch, syscall.SIGINT, syscall.SIGTERM)

	<-ch

	log.Println("Shutting down server...")

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	err := srv.Shutdown(ctx)
	if err != nil {
		log.Fatal(err)
	}
}
