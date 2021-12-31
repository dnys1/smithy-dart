import 'dart:html';

const distributionUrl = String.fromEnvironment('DISTRIBUTION_URL');
const apiUrl = String.fromEnvironment('API_URL');

void main() {
  querySelector('#output')?.text = '$distributionUrl\n$apiUrl';
}
