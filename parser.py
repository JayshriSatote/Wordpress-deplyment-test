import re
import pandas as pd
import pprint
logfiles = open("access.log.1","r")
pattern = r"((25[0-5]|2[0-4][0-9]|[0-1][0-1]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[0-1][0-1]?[0-9][0-9]?)"
ip_addrs_lst = []
failed_lst = []
success_lst =[]
for log in logfile:
ip_ad = re.search(pattern,log)
ip_addrs_lst.append(ip_add.group())
lst = log.split(* *)
failed_lst.append(int(lst[-1]))
success_lst.append(int(lst[-4]))
df =pd.dataframe(columns=['Ip_Adress','Success','Failed'])
df['Ip_Address'] = ip_addrs_lst
df['Success'] = success_lst
df['Failed'] = failed_lst
pprint.pprind(df)
df.to_CSV("Logreport.CSV",index=false)  