"""
convert json file
Hai Hu 2019 Nov
"""

import json, sys, codecs

in_fn = sys.argv[1]
out_fn = sys.argv[2]

fout = codecs.open(out_fn, "w", encoding='utf8')

with codecs.open(in_fn, encoding='utf8') as f:
	for i, p in enumerate(f):
		p=json.loads(p)
		fout.write("{}\t{}\t{}\t{}\n".format(
			str(i),
			p["sentence1"],
			p["sentence2"],
			p["gold_label"]
		))

fout.close()

