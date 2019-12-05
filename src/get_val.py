"""Reads a tab separated value file."""
input_file = "/home/leibao/code/bert_chinese_text_classification/data/train.tsv"
output_file = "/home/leibao/code/bert_chinese_text_classification/val_data/train.tsv"
file_in = open(input_file, "rb")
file_out = open(output_file, "wb")
lines = []

NUM = 50

labels = {}
for line in file_in:
    element = line.decode("utf-8").split("\t")
    if element[0] not in labels:
        labels[element[0]] = 1
    elif labels[element[0]] > NUM:
        continue

    file_out.write(line)
    labels[element[0]] += 1

file_in.close()
file_out.close()

