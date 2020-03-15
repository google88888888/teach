//closest pair
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#define ERROR 0
#define DOUBLEMAX 1e308
#define EPS 0.000001
typedef struct POINT {
	double x,y;
}Point;
Point a[100005];
double Dis2 (Point a,Point b){    //距离平方
	double x,y;
	x=a.x-b.x;
	y=a.y-b.y;
	return x*x+y*y;
}
void Swap (int i, int j){    //交换 
	if(i==j)return;
	Point t;
	t=a[i];
	a[i]=a[j];
	a[j]=t;
}
int Partition_x (int l, int r,double x){    //对X坐标依据参数x分为左边小于x，右边大于x 
	int i=l+1,j=r,k=l-1;
	if(l>r)return ERROR;
	else if(l==r)return l;
	while(++k<=r)if(a[k].x+EPS>x&&a[k].x-EPS<x)break;    //找到x在数组中位置，换到最前面 
	Swap(k,l);
	while(1){
		while(i<r&&(a[i].x<x||(a[i].x+EPS>x&&a[i].x-EPS<x)))++i;
	    while(j>l&&a[j].x>x)--j;
	    if(i>=j)break;
		Swap(i,j);	
	} 
	Swap(l,j);
	return j;    
}
int Partition_y (int l, int r,double x){    //同上，对Y坐标操作 
	int i=l+1,j=r,k=l-1;
	if(l>r)return ERROR;
	else if(l==r)return l;
	while(++k<=r)if(a[k].y+EPS>x&&a[k].y-EPS<x)break;    
	Swap(k,l);
	while(1){
		while(i<r&&(a[i].y<x||(a[i].y+EPS>x&&a[i].y-EPS<x)))++i;
	    while(j>l&&a[j].y>x)--j;
	    if(i>=j)break;
		Swap(i,j);	
	} 
	Swap(l,j);
	return j;    
}
void InsertSort_y(int l,int r){    //简单插入排序 
	int i,j,k;
	Point temp;
	if(r-l<=0)return ;
	else if(r-l==1){
		if(a[l+1].y<a[l].y)Swap(l,l+1);
		return ;
	}
	if(a[l+1].y<a[l].y)Swap(l,l+1);
	for(i=l+2;i<=r;++i){
		for(j=l;j<i;++j)if(a[j].y>a[i].y)break;
		if(j<i){
			temp=a[i];
			for(k=i;k>j;--k)a[k]=a[k-1];
			a[j]=temp;
		}
	}
}
void InsertSort_x(int l,int r){
	int i,j,k;
	Point temp;
	if(r-l<=0)return ;
	else if(r-l==1){
		if(a[l+1].x<a[l].x)Swap(l,l+1);
		return ;
	}
	if(a[l+1].x<a[l].x)Swap(l,l+1);
	for(i=l+2;i<=r;++i){
		for(j=l;j<i;++j)if(a[j].x>a[i].x)break;
		if(j<i){
			temp=a[i];
			for(k=i;k>j;--k)a[k]=a[k-1];
			a[j]=temp;
		}
	}
}
double MidMid_x(int l,int r){    //找类似中位数 
	int i;
	if(r-l<=4){    //小于5个元素直接插入排序 
		InsertSort_x(l,r);
		return a[(r-l)/2+l].x;
	}
	for(i=0;i<=(r-l-4)/5;++i){    //5个元素分为一组，每组中位数换到整个数组前面 
		InsertSort_x(l+5*i,l+5*i+4);
		Swap(l+5*i+2,l+i);
	}
	if(l+i*5<=r){    //处理分组后剩余元素 
		InsertSort_x(l+i*5,r);
		Swap((l+5*i-r)/2+r,l+i);
	}
	return MidMid_x(l,l+i);    //对每组中位数再找中位数 
}
double MidMid_y(int l,int r){
	int i;
	if(r-l<=4){
		InsertSort_y(l,r);
		return a[(r-l)/2+l].y;
	}
	for(i=0;i<=(r-l-4)/5;++i){
		InsertSort_y(l+5*i,l+5*i+4);
		Swap(l+5*i+2,l+i);
	}
	if(l+i*5<=r){
		InsertSort_y(l+i*5,r);
		Swap((l+5*i-r)/2+r,l+i);
	}
	return MidMid_y(l,l+i);
}
void QuickSort_x (int l, int r){    //改进版快排 
	double flag;
	int pos;
	if(r-l<=1){    
		if(a[r].x<a[l].x)Swap(l,r);
		return ;
	}
	flag=MidMid_x(l,r);    //flag为挑选出的划分标准 Partition函数把数组划分为小于、大于flag的两部分 
	pos=Partition_x(l,r,flag);  //返回标准（较小部分）位置 
	QuickSort_x(l,pos-1);     
	QuickSort_x(pos+1,r);
}
void QuickSort_y (int l, int r){
	double flag;
	int pos;
	if(r-l<=1){    
		if(a[r].y<a[l].y)Swap(l,r);
		return ;
	}
	flag=MidMid_y(l,r);
	pos=Partition_y(l,r,flag);
	QuickSort_y(l,pos-1);
	QuickSort_y(pos+1,r);
}
double Closest(int l, int r){
	if(r-l==1)return Dis2(a[l],a[l+1]);
	else if(r-l==2){
		double dis01,dis02,dis12;
		dis01=Dis2(a[l],a[l+1]), dis02=Dis2(a[l],a[l+2]), dis12=Dis2(a[l+1],a[l+2]);
		dis01=(dis01<dis02)?dis01:dis02;
		dis01=(dis01<dis12)?dis01:dis12;
		return dis01;
	}
	 double minL,minR,min=DOUBLEMAX,flagX,t;
	 int div,i,j,k;
	 Point b[100005];
	 /*divide*/  
	 QuickSort_x(l,r); 
	 minL=Closest(l,(l+r)/2);    //求得两边的最小距离， 取较小值 ；这行代码有问题！！ 
	 minR=Closest((l+r)/2+1,r);
	 min=(minL<minR)?minL:minR;
	 /*merge*/
	 QuickSort_y(l,r);    //先对Y坐标排序 
	for(k=0;l<=r;++l)if((a[l].x-flagX)*(a[l].x-flagX)<min)b[k++]=a[l];	//筛选出距离X轴划分中心距离小于最小距离的点 
	for(i=0;i<k-1;++i){    //检验这些点与下方距离它们垂直距离小于最小距离的点，它们间的距离是否小于最小距离 
		for(j=i+1;j<k;++j){    //更新最小距离 
			if((b[i].y-b[j].y)*(b[i].y-b[j].y)>min)break;
			t=Dis2(b[i],b[j]);
			min=(t<min)?t:min;
		}
	}
	return min;
}
int main(){
	int i,n;
	double dis01,dis02,dis12;
	while(scanf("%d",&n)&&n!=0){
		for(i=0;i<n;++i)scanf("%lf %lf",&a[i].x,&a[i].y);
		printf("%.2f\n",sqrt(Closest(0,n-1))/2);
	}
	return 0;
}
