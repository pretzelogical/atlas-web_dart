int fact(int f) {
  return f <= 1 ? 1 : f * fact(f - 1);
}