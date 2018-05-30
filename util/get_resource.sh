#!/bin/python

import sys
import optparse
import csv

def preprocessing(file):
    f = open(file, "r")
    
    tick = []
    
    for row in f:
        if row.count("get_clocktime"):
            row = row.rstrip("\n").split(": ")
            tick.append(int(row[0]))
            if len(tick) > 50:
                break
    f.close();

    if (len(tick) != 2):
        print "error: Timer func is limited to two parts."
        quit()

    if (len(tick)):
        printFreeEntries(file, int(tick[0]), int(tick[1]))
    else:
        printFreeEntries(file, None, None)

def printFreeEntries(file, start_tick, end_tick):
    f = open(file, "r")

    tick = []
    resource = []
    iq_list = []
    rob_list = []
    lq_list = []
    sq_list = []
    intReg = []
    floatReg = []
    vectorReg = []
    maskReg = []

    for row in f:
        if not row.count("get_clocktime"):
            row = row.rstrip("\n").split(": ")
            tick.append(int(row[0]))
            resource.append(row[2])

    for row in resource:
        row = row.rstrip("\n").split(", ")
        iq_list.append(int(row[0]))
        rob_list.append(int(row[1]))
        lq_list.append(int(row[2]))
        sq_list.append(int(row[3]))
        intReg.append(int(row[4]))
        floatReg.append(int(row[5]))
        vectorReg.append(int(row[6]))
        maskReg.append(int(row[7]))
        
    outfile = open('freeresource.csv', 'w')
    writer = csv.writer(outfile)
    writer.writerow(['','Free IQ','Free ROB','Free LQ','Free SQ','Free IntReg','Free FloatReg','Free VectorReg','Free MaskReg'])
    for (t, i, r, l, s, ir, fr, vr, mr) in zip(tick, iq_list, rob_list, lq_list, sq_list, intReg, floatReg, vectorReg, maskReg):
        if ((start_tick is None) and (end_tick is None)):
            writer.writerow([t, i, r, l, s, ir, fr, vr, mr])
        else:
            if ((int(start_tick) < t) and (t < int(end_tick))):
                writer.writerow([t, i, r, l, s, ir, fr, vr, mr])
    outfile.close()

if __name__ == "__main__":
    argvs = sys.argv
    argc = len(argvs)

    if (argc == 2):
        preprocessing(argvs[1]);
    elif (argc == 4):
        printFreeEntries(argvs[1], argvs[2], argvs[3])
    else:
        print 'Usage : %s <filename>' % argvs[0], 'or', \
            '%s <filename> <start_tick_num> <end_tick_num>' % argvs[0]
        quit()

    preprocessing(argvs[1])
