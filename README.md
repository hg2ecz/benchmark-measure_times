# benchmark-measure_times
How to measure time for benchmark in C?

<ul>
<li><b>clock():</b> - cpu usage time in microsec</li>
<li><b>clock_gettime():</b> - cpu usage time in nanosec, it can measure self or child process</li>
<li><b>gettimeofday():</b> - elapsed time (see time shared OS)</li>
<li><b>getrusage():</b> - see shell "time" function, resolution is not enought for precise measurement</li>
</ul>
