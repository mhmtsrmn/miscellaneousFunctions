def bubble(lst):
    l = len(lst)
    for _ in range(l):
        for i in range(l-2):
            if lst[i]>lst[i+1]:
                lst[i+1], lst[i]=lst[i],lst[i+1]

    return lst


if __name__=='__main__':
	lst = [3,6,5,2,7,4,1,8]
	print(bubble(lst))
