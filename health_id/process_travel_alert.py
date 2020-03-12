import pymysql
import csv
import sys
import os
import pandas as pd
from datetime import datetime

if __name__ == '__main__':
    file_path = './TCDCTravelAlert.csv'
    transfer_path = './TravelAlert.csv'

    df = pd.read_csv(file_path)[['areaDesc', 'effective', 'severity_level', 'instruction']]
    for i in range(len(df)):
        date = df['effective'][i].split('T')[0]
        time = df['effective'][i].split('T')[1].split('+')[-1] + ':00'
        df['effective'][i] = date + ' ' + time
    df.to_csv(transfer_path, index=False)