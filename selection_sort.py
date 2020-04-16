def selectSort(lst):
    l = len(lst)
    for i in range(l-1):
        for j in range(i, l):
            if lst[j]<lst[i]:
                lst[j],lst[i]=lst[i],lst[j]
    return lst

if __name__=='__main__':
    lst = [6,3,8,5,2,7,4,1]
    print(selectSort(lst))
