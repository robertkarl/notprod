#! /usr/bin/env python3
import subprocess
from subprocess import Popen, PIPE
import time

COUNT = 10
start = time.time()
processes = []
for i in range(COUNT):
    p1 = Popen(["curl", "http://localhost/process_payment"], stdout=PIPE, stderr=subprocess.DEVNULL)
    processes.append(p1)

while len(processes ) > 0:
    curr = processes[0]
    while curr.poll() is None:
        print('Still calculating QPS')
        time.sleep(1)
    processes.pop(0)

delta = time.time() - start
QPS = COUNT / delta
print("{} QPS is {}.".format("\n" * 10, QPS))
if QPS > 3:
    print("Yes!\nThat should fix our revenue issues.\n\nURL of next level is https://www.youtube.com/watch?v=dQw4w9WgXcQ")
else:
    print("we are still bleeding money.")
