import java.util.*;

class PQ {

  ArrayList<Cell> heap;
  int last_index;

  PQ() {
    this.heap = new ArrayList<Cell>();
    this.last_index = -1;
  }

  void insert(Cell data) {
    this.last_index++;
    this.heap.add(data);
    this.toTop(this.last_index);
  }

  Cell extract() {
  if (this.last_index == 0) {
    Cell rtrn = this.heap.get(0);
    this.heap.remove(0);
    this.last_index--;
    return rtrn;
  } else {
    Cell top = this.heap.get(0);
    Cell last = this.heap.get(this.last_index);
    this.heap.remove(this.last_index);
    this.heap.set(0, last);
    this.last_index--;
    this.toBottom(0);
    return top;
    }
  }

  void toTop(int n) {
    int parent = this.parent(n);

    while (n > 0 && this.cmpr(n, parent)) {
      this.swap(parent, n);
      n = parent;
      parent = this.parent(parent);
    }
  }

  void toBottom(int n) {
    int left = this.leftchild(n);
    int right = this.rightchild(n);
    int target = n;

    if (left <= this.last_index && this.cmpr(left, n)) {
      target = left;
    }

    if (right <= this.last_index && this.cmpr(right, target)) {
      target = right;
    }

    if (target != n) {
      this.swap(n, target);
      this.toBottom(target);
    }
  }

  int parent(int n) {
    if (n%2 == 0) return (n/2)-1;
    return n/2;
  }

  int leftchild(int n) {
    return (n*2)+1;
  }

  int rightchild(int n) {
    return (n*2)+2;
  }

  boolean cmpr(int a, int b) {
    Cell cellA = this.heap.get(a);
    Cell cellB = this.heap.get(b);

    return cellA.isLessThan(cellB);
  }

  void swap(int a, int b) {
    Cell temp = this.heap.get(a);
    this.heap.set(a, this.heap.get(b));
    this.heap.set(b, temp);
  }

  boolean isEmpty() {
    return (this.last_index == -1);
  }
  
  int len() {
    return (this.last_index+1);
  }

}
