friendships = {
  'Alice': ['Bob', 'Frank'],
  'Bob': ['Alice', 'Charlie', 'Geraldine'],
  'Charlie': ['David', 'Bob'],
  'David': ['Charlie', 'Frank'],
  'Eve': [],
  'Frank': ['Alice', 'Charlie'],
  'Geraldine': ['Bob']
}


function degreesOfFrienship(start, degrees, graph) {
  let queue = [[start]];

  let visited = new Set();
  let friends = []
  
  while (queue.length > 0) {
    let path = queue.shift();
    let currentFriend = path[path.length - 1]

    if (!visited.has(currentFriend)) {
      visited.add(currentFriend);

      if(path.length > 1 && path.length <= degrees + 1) {
        friends.push(currentFriend)
      }

      let neighbors = getFriends(currentFriend, graph)
      for (i = 0; i < neighbors.length; i++) {
        let pathCopy = [...path];
        pathCopy.push(neighbors[i]);
        queue.push(pathCopy);
      }
    }
  }

  return friends;
}


function getFriends(name, graph) {
  return graph[name]
}

console.log(degreesOfFrienship('Alice', 1, friendships));
// ['Bob', 'Frank']

console.log(degreesOfFrienship('Alice', 2, friendships));
// ['Bob', 'Frank', 'Charlie', 'Geraldine']

