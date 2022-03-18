namespace org.publiclibrary

service LibraryService {
  version: "1.0",
  operations: [CreateBook, CheckoutBook]
}

@http(method: "POST", uri: "/books/{id}")
operation CreateBook {
  input: CreateBookInputOutput,
  output: CreateBookInputOutput,
  errors: [BookAlreadyDefinedError]
}

structure CreateBookInputOutput {
  @httpLabel
  @required
  id: String,

  @required
  title: String,

  @required
  author: Author,

  isbn: String,
  datePublished: Timestamp
}

structure Author {
  @required
  id: String,

  name: String
}

@httpError(409)
@error("client")
structure BookAlreadyDefinedError {
  @required
  existingId: String
}

@http(method: "POST", uri: "/checkout/{bookId}")
operation CheckoutBook {
  input: CheckoutBookInput
}

structure CheckoutBookInput {
  @httpLabel
  @required
  bookId: String,

  @httpHeader("X-Library-Card")
  @required
  libraryCard: String
}
