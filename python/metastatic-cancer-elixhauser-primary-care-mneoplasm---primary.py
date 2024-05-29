# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"B58y500","system":"readv2"},{"code":"B582.00","system":"readv2"},{"code":"BB04.00","system":"readv2"},{"code":"B153.00","system":"readv2"},{"code":"B583000","system":"readv2"},{"code":"B576000","system":"readv2"},{"code":"B574100","system":"readv2"},{"code":"ByuC300","system":"readv2"},{"code":"BB03.11","system":"readv2"},{"code":"B581200","system":"readv2"},{"code":"B583.00","system":"readv2"},{"code":"B586.00","system":"readv2"},{"code":"B574200","system":"readv2"},{"code":"B582500","system":"readv2"},{"code":"B57..00","system":"readv2"},{"code":"2022MT","system":"readv2"},{"code":"B581.00","system":"readv2"},{"code":"B583z00","system":"readv2"},{"code":"B58y600","system":"readv2"},{"code":"B58y100","system":"readv2"},{"code":"BB03.00","system":"readv2"},{"code":"B582400","system":"readv2"},{"code":"B581z00","system":"readv2"},{"code":"B576100","system":"readv2"},{"code":"B582100","system":"readv2"},{"code":"B570.00","system":"readv2"},{"code":"ByuC400","system":"readv2"},{"code":"B583100","system":"readv2"},{"code":"B581000","system":"readv2"},{"code":"B575000","system":"readv2"},{"code":"B576.00","system":"readv2"},{"code":"1977A","system":"readv2"},{"code":"B577.00","system":"readv2"},{"code":"B582200","system":"readv2"},{"code":"B575100","system":"readv2"},{"code":"B582300","system":"readv2"},{"code":"B58y800","system":"readv2"},{"code":"B57z.00","system":"readv2"},{"code":"B580.00","system":"readv2"},{"code":"B573.00","system":"readv2"},{"code":"B594.00","system":"readv2"},{"code":"B57y.00","system":"readv2"},{"code":"B582000","system":"readv2"},{"code":"B58y300","system":"readv2"},{"code":"B585.00","system":"readv2"},{"code":"B582z00","system":"readv2"},{"code":"B591.00","system":"readv2"},{"code":"B576z00","system":"readv2"},{"code":"B58y700","system":"readv2"},{"code":"B574000","system":"readv2"},{"code":"B58y900","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('metastatic-cancer-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["metastatic-cancer-elixhauser-primary-care-mneoplasm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["metastatic-cancer-elixhauser-primary-care-mneoplasm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["metastatic-cancer-elixhauser-primary-care-mneoplasm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
