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