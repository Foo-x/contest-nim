include contestlib/imports
import contestlib

when isMainModule:
  var
    n = read(int)

  var l = initDoublyLinkedList[int]()
  n.loop:
    let command = read(string)
    case command:
    of "deleteFirst":
      l.remove l.head

    of "deleteLast":
      l.remove l.tail

    else:
      let num = read(int)
      case command:
      of "insert":
        l.prepend num

      of "delete":
        l.remove l.find(num)

  echo l.toSeq.join " "
