function N(val, left, right) {
  this.val = val;
  this.left = left ?? null;
  this.right= right ?? null;
}

const f = x => x ? new N(x.val, f(x.right), f(x.left)) : null;
