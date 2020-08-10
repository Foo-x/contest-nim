from os import `/`, walkFiles
import strformat, strutils, sequtils, os

let
  paramCount = system.paramCount
  paramStr = system.paramStr

task create, "create files":
  if paramCount() < 4:
    echo "needs more than 3 arguments."
    echo "nim create site title problem1 problem2 ..."
    quit(1)

  mkDir thisDir() / "src" / paramStr(2) / paramStr(3)
  mkDir thisDir() / "src" / paramStr(2) / paramStr(3) / "inputs"
  withDir thisDir() / "src" / paramStr(2) / paramStr(3):
    for i in 4..paramCount():
      writeFile &"{paramStr(3)}_{paramStr(i)}.nim", ""
      writeFile "inputs" / &"{paramStr(3)}_{paramStr(i)}.txt", ""

task test, "test":
  if paramCount() < 4:
    echo "needs more than 3 arguments."
    echo "nim test site title problem"
    echo "nim test site title problem input_index"
    quit(1)

  let targetIndices = if paramCount() == 4: @[] else: (5..paramCount()).toSeq.mapIt(paramStr(it).parseInt)

  withDir thisDir() / "src" / paramStr(2) / paramStr(3):
    for i, pair in readFile("inputs" / &"{paramStr(3)}_{paramStr(4)}.txt").split("===").pairs():
      if targetIndices.len > 0 and i notin targetIndices:
        continue

      let
        qa = pair.split("---").mapIt(it.strip())
        target = thisDir() / "src" / paramStr(2) / paramStr(3) / &"{paramStr(3)}_{paramStr(4)}.nim"
        actual = gorge(&"nim cpp -r --outdir:$(mktemp -d) -d:release -d:debug --hints:off -w:off --verbosity:0 {target}", qa[0])

      if qa.len == 1:
        echo &"input {i}:"
        echo actual
      elif actual == qa[1]:
        echo &"input {i}: success"
      else:
        echo &"input {i}: fail"
        echo "expected:"
        echo qa[1]
        echo ""
        echo "actual:"
        echo actual

      echo ""

task exec, "execute and not assert":
  if paramCount() < 4:
    echo "needs more than 3 arguments."
    echo "nim exec site title problem"
    echo "nim exec site title problem input_index"
    quit(1)

  let targetIndices = if paramCount() == 4: @[] else: (5..paramCount()).toSeq.mapIt(paramStr(it).parseInt)

  withDir thisDir() / "src" / paramStr(2) / paramStr(3):
    for i, pair in readFile("inputs" / &"{paramStr(3)}_{paramStr(4)}.txt").split("===").pairs():
      if targetIndices.len > 0 and i notin targetIndices:
        continue

      let
        qa = pair.split("---").mapIt(it.strip())
        target = thisDir() / "src" / paramStr(2) / paramStr(3) / &"{paramStr(3)}_{paramStr(4)}.nim"
        actual = gorge(&"nim cpp -r --outdir:$(mktemp -d) -d:release -d:debug --hints:off -w:off --verbosity:0 {target}", qa[0])

      echo &"input {i}:"
      echo actual

      echo ""

task fmt, "format file":
  if paramCount() < 3:
    echo "needs more than 2 arguments."
    echo "nim fmt site title"
    echo "nim fmt site title problem1 problem2 ..."
    quit(1)

  withDir thisDir() / "src" / paramStr(2) / paramStr(3):
    if paramCount() == 3:
      for file in walkDirRec(".", {pcFile}, {}):
        if file.splitFile().ext == ".nim":
          let target = thisDir() / "src" / paramStr(2) / paramStr(3) / file
          exec &"nimpretty {target}"
    else:
      for i in 4..paramCount():
        let target = thisDir() / "src" / paramStr(2) / paramStr(3) / &"{paramStr(3)}_{paramStr(4)}.nim"
        exec &"nimpretty {target}"
