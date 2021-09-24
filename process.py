log_file = open("um-server-01.txt") #open text file


def sales_reports(log_file): #define function
    for line in log_file: #initiate for-in loop in the opened file
        line = line.rstrip() #remove any whitespace
        day = line[0:3] #setting the day value from the line to a day variable
        if day == "Mon": #check what day
            print(line) #print


sales_reports(log_file) #running everything

