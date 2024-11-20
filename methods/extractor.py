import os 
   
# Get the list of all files and directories 
dir_list = os.listdir() 
def getTotalQuery(s):
    # print(s)
    return s.split('TOTAL QUERY TIME:  ')[1].split('ms')[0]
def getRecall(s):
    # print(s)
    return s.split('AVG RECALL:        ')[1].split('\n')[0]
def getMap(s):
    # print(s)
    return s.split('AVG MAP:           ')[1].split('\n')[0]
def getConstructionTime(s):
    # print(s)
    return s.split('FINISH BUILDING WITH TIME: ')[1].split(' s')[0]
def getDataset(s):
    # print(s)
    # print(s.split('dataset')[2])
    # print("&")
    # print(s.split('dataset')[2].split('base')[0])
    return s.split('query set = /data/kabir/similarity-search/dataset/')[1].split('/query')[0]
def getK(s):
    # print(s)
    return s.split('k=        ')[1].split('\n')[0]
def cleanString(s):
    return s.replace(' ','').replace('\t','').replace('\n','')
def extractFile(fileName):
    with open(fileName, 'r') as file:
        ds=fileName
        # print(ds)
        Lines = file.readlines()
        # print(len(Lines))
        last_index=0
        for i in range(0,len(Lines)):
            ln=Lines[i]
            # print(ln)
            if ln.startswith('Indexing Time = '):
                lll=ln.split('Indexing Time = ')[1].split(' Seconds')[0]
                last_index=lll
            elif ln.startswith('k-NN Search by QALSH:'):
                nxt=Lines[i+2]
                nxt_splitted=nxt.split('\t')
                # print(nxt_splitted, last_index)
                print(cleanString(ds)+','+'QALSH'+','+cleanString(nxt_splitted[0])+','+last_index+','+cleanString(nxt_splitted[4])+','+cleanString(nxt_splitted[6])+','+cleanString(nxt_splitted[8]))
            elif ln.startswith('prefix = '):
                lll=ln.split('prefix = /data/kabir/similarity-search/dataset/')[1]
                ds=lll
                if 'gist' in ln:
                    ds='gist'
            
            
        
        
for i in range(1,29):
    extractFile('log'+str(i))
# for a in dir_list:
#     extractFile(a)