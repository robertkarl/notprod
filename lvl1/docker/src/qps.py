from subprocess import Popen, PIPE
import time

COUNT = 1
start = time.time()
for i in range(COUNT):
	p1 = Popen(["curl", "localhost:5000/process_payment"], stdout=PIPE)
	p1.communicate()
delta = time.time() - start
QPS = delta / COUNT
if QPS > 3:
	print("URL of next level is https://www.youtube.com/watch?v=dQw4w9WgXcQ")
print("{} QPS is {}".format("\n" * 10, delta / COUNT))

