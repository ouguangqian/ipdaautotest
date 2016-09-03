# -*- coding: utf-8 -*-

import os
import sys

# file = open('procranktest.log', 'a')
# file.writelines(' Vss      Rss      Pss      Uss    uss_max  \n')
print(' Vss      Rss      Pss      Uss    uss_max  \n')
# file.close()
total_uss = 0
uss_max = 0
loop_cnt = 20
for i in range(loop_cnt):
    ret = os.popen('adb shell procrank | grep com.pateo.foton.icall').readlines()
    vss = 0
    rss = 0
    pss = 0
    uss = 0


    for r in ret:
        if len(r) > 0:
            while r.__contains__('  '):
                r = r.replace('  ', ' ')
            retlist = r.strip().split(' ')
            # print(retlist)
            vss += int(retlist[1][:-1])
            rss += int(retlist[2][:-1])
            pss += int(retlist[3][:-1])
            uss += int(retlist[4][:-1])
    uss_max = max(uss, uss_max)
    total_uss += uss

    retStr = str(vss) + '   ' + str(rss) + '   ' + str(pss) + '   ' + str(uss) + '   ' + str(uss_max)
    print(retStr)

print('平均占用内存为：' + str(total_uss / loop_cnt ) + 'kb')
print('最大内存为：' + str(uss_max) + 'kb')
            # file = open('/home/ogq/procranktest.log', 'a')
            # file.writelines(r)
            # file.close()
