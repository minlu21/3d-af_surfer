#!/usr/bin/env python3

import sys
import os
import gzip
import itertools

MAX_ALLOWED_LINKER_LEN = 5

thresh = float(sys.argv[1])

infiles = sys.argv[2:]

def iterable_to_intervals(l):
	for key, group in itertools.groupby(enumerate(l), key=lambda e: (e[1][0]-e[0], e[1][1])):
		group = list(group)
		yield (group[0][1], group[-1][1])

#os.makedirs("split")
#os.makedirs("trimmed")

for infile in infiles:
	def process_file(f):
		# {resi=int(substr($0, 23, 4)); bfac=(substr($0, 61, 6))	
		resis = []
		for line in f:
			if line.startswith("ATOM") and " CA " in line:
				#print(line.strip())
				resi = int(line[22:22+4])
				bfac = float(line[60:60+6])
				resis.append((resi, bfac > thresh))
		#print(infile, max([0]+list((x[1]-x[0]) for x in iterable_to_intervals(resis))))
		domains = [x for x in iterable_to_intervals(resis) if ((x[1][0]-x[0][0])>50) and (x[0][1] == True)]
		#linker_lens = []
		xx = []
		for i, domain in enumerate(domains):
			#if i == 0:
			#	continue
			#prev = domains[i-1]
			#linker_len = domain[0][0] - prev[1][0] - 1
			#linker_lens.append(linker_len)
			#print("DOMAIN", domain[0][0], domain[1][0])
			xx.append((domain[0][0], domain[1][0]))

		#print(infile, " ".join(str(x) for x in linker_lens))
		domains = list(reversed(xx))
		merged = []
		while domains:
			cur = domains.pop()
			if domains:
				nextcur = domains[-1]
				if (nextcur[0] - cur[1] - 1) <= MAX_ALLOWED_LINKER_LEN:
					domains.pop()
					domains.append((cur[0], nextcur[1]))
				else:
					merged.append((cur[0], cur[1]))
			else:
				merged.append((cur[0], cur[1]))

		print(infile, " ".join("%d-%d" % x for x in merged))
	try:
		with (gzip.open(infile, 'rt') if infile.endswith(".gz") else open(infile)) as f:
			process_file(f)
	except UnicodeDecodeError as e:
		with gzip.open(infile, 'rt') as f:
			process_file(f)
		
