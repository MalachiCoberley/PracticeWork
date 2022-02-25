var sortList = function(head) {
    let curNode = head
    let unsorted = true
    while (unsorted){
        unsorted = false
        while (curNode.next) {
            let nextNode = curNode.next
            if(curNode.val > nextNode.val) {
                if (curNode == head) {
                    head = nextNode
                }
                curNode.next = nextNode.next;
                nextNode.next = curNode;
                unsorted = true
            } else {
                curNode = curNode.next
            }
        }
    }
    return head
};



// linked list cycle
var hasCycle = function(head) {
  if (!head || !head.next) {
      return false
  }
  let cycled = false;
  let currentNode = head;
  let i = 0;
  const mapper = new Map()
  while (!cycled && currentNode.next) {
      if (mapper.get(currentNode)) {
          cycled = true
      } else {
          mapper.set(currentNode, i)
      }
      i++
      currentNode = currentNode.next
  }
      
  return cycled
};