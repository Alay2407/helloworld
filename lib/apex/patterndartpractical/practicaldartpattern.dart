import 'dart:io';
// 1
// void main() {
//   for (int i = 1; i <= 4; i++) {
//     for (int j = 1; j <= i; j++) {
//       stdout.write('*');
//     }
//     stdout.writeln();
//   }
//   for (int i = 1; i <= 4; i++) {
//     for (int j = 4; j >= i; j--) {
//       stdout.write("*");
//     }
//     stdout.writeln();
//   }
// }
// *
// **
// ***
// ****
// *****
// ****
// ***
// **
// *

// 2
// void main() {
//   for (int i = 1; i <= 4; i++) {
//     for (int j = 3; j >= i; j--) {
//       stdout.write(" ");
//     }
//     for (int k = 1; k <= i; k++) {
//       stdout.write("*");
//     }
//     stdout.writeln();
//   }
// }
//     *
//    **
//   ***
//  ****

// 3
// void main(){
//
//   for(int i=1;i<=4;i++){
//     for(int j=1;j<=i;j++){
//       stdout.write(" ");
//     }
//     for(int k = 4; k >= i; k--){
//       stdout.write("*");
//     }
//     stdout.writeln();
//   }
// }
// ****
//  ***
//   **
//    *

// 4
// void main(){
//   for(int i=1;i<=4;i++){
//     for(int j=4;j>=i;j--){
//       stdout.write(" ");
//     }
//     for(int k=1;k<=i;k++){
//       stdout.write("*");
//     }
//     stdout.writeln();
//   }
//   for(int k=1;k<=4;k++){
//     for(int l=1;l<=k;l++){
//       stdout.write(" ");
//     }
//     for(int m=3;m>=k;m--){
//       stdout.write("*");
//     }
//     stdout.writeln();
//   }
// }
//    *
//   **
//  ***
// ****
//  ***
//   **
//    *

// 5
//
// void main(){
//   for(int i=1;i<=4;i++){
//     for(int j=4;j>=i;j--){
//       stdout.write(" ");
//     }
//     for(int k=1;k<=i;k++){
//       stdout.write(" *");
//     }
//     stdout.writeln();
//   }
// }
//
//    *
//   * *
//  * * *
// * * * *

// 6
// void main(){
//   for(int i=1;i<=4;i++){
//     for(int j=4;j>=1;j--){
//       if(j>  i){
//         stdout.write(" ");
//       }
//       else{
//         stdout.write(" *");
//       }
//
//     }
//     stdout.writeln();
//   }
// }
//    *
//   * *
//  * * *
// * * * *

// 7/
//
// void main(){
//   for(int i=1;i<=4;i++){
//
//     for(int j=4;j>=i;j--){
//       stdout.write(" ");
//     }
//     for(int k=1;k<=i;k++){
//       stdout.write("*");
//     }
//     for(int l=2;l<=i;l++){
//       stdout.write("*");
//     }
//     stdout.writeln();
//   }
// }
//
//    *
//   ***
//  *****
// *******

// 8
// void main(){
//   for(int i=1;i<=4;i++){
//     for(int k=1;k<=i;k++){
//       stdout.write(" ");
//     }
//     for(int j=4;j>=i;j--){
//       stdout.write("*");
//     }
//     for(int l=3;l>=i;l--){
//       stdout.write("*");
//     }
//     stdout.writeln();
//
//   }
// }
//
// *******
//  *****
//   ***
//    *

//9
// void main(){
//   for(int i=1;i<=5;i++){
//     for(int j=1;j<=i;j++){
//       if(i>=2 && j<=i-1){
//         stdout.write(" ");
//       }
//       else{
//         stdout.write("*");
//       }
//     }
//     stdout.writeln();
//   }
// }
// *
//  *
//   *
//    *
//     *

// 10
// void main() {
//   for (int i = 1; i <= 5; i++) {
//     for (int k = 4; k >= i; k--) {
//       stdout.write(" ");
//     }
//     for (int j = 1; j <= i; j++) {
//       // stdout.write("*");
//       if (i >= 2 && j > 1) {
//         stdout.write(" ");
//       } else {
//         stdout.write("*");
//       }
//     }
//
//     stdout.writeln();
//   }
// }
//      *
//     *
//    *
//   *
// *

// 11
// void main(){
//   int count = 0;
//   for(int i=1;i<=4;i++){
//     for(int j=1;j<=i;j++){
//       count++;
//       stdout.write(count);
//     }
//     stdout.writeln();
//   }
// }
// 1
// 23
// 456
// 78910

// 12
// void main(){
//
//   for(int i=1;i<=5;i++){
//     for(int j=i;j>=1;j--){   /////////////here another method for increment....this is j>=1  and another is  j<=i
//       stdout.write(j);
//     }
//     stdout.writeln();
//   }
// }
// 1
// 21
// 321
// 4321
// 54321

//13
// void main(){
//   for(int i=1;i<=4;i++){
//     for(int j=1;j<=i;j++){
//       stdout.write(j);
//     }
//     for(int k=i-1;k>=1;k--){
//       stdout.write(k);
//     }
//     stdout.writeln();
//   }
// }
// 1
// 121
// 12321
// 1234321

// 14
// void main(){
//   for(int i=1;i<=5;i++){
//     for(int j=5;j>=i;j--){
//       stdout.write(j);
//     }
//     stdout.writeln();
//   }
// }
// 54321
// 5432
// 543
// 54
// 5

//15
// void main() {
//   for (int i = 1; i <= 5; i++) {
//     int num = i;
//     for (int j = 1; j <= i; j++) {
//       stdout.write("  $num");
//
//       num=num+5-j;
//
//     }
//     stdout.writeln();
//   }
// }
// 1
// 2  6
// 3  7  10
// 4  8  11  13
// 5  9  12  14  15

//16
// void main() {
//   for (int i = 1; i <= 5; i++) {
//     int num = i;
//     for (int j = 1; j <= 5; j++) {
//       stdout.write("  $i");
//
//     }
//     stdout.writeln();
//   }
// }
// 1  1  1  1  1
// 2  2  2  2  2
// 3  3  3  3  3
// 4  4  4  4  4
// 5  5  5  5  5

//17
// void main(){
//   int count = 0;
//   for(int i=1;i<=5;i++){
//
//     for(int j=1;j<=3;j++){
//       count = count+1;
//       stdout.write("  $count");
//
//     }
//     stdout.writeln();
//   }
// }
// 1  2  3
// 4  5  6
// 7  8  9
// 10  11  12
// 13  14  15

//18
// void main(){
//   for(int i=1;i<=4;i++){
//
//     for(int j=4;j>=i;j--){
//       stdout.write(" ");
//     }
//     for(int k=1;k<=i;k++){
//       stdout.write(i);
//     }
//     for(int l=2;l<=i;l++){
//       stdout.write(i);
//     }
//     stdout.writeln();
//   }
// }
//    1
//   222
//  33333
// 4444444

// 19
// void main(){
//   for(int i=1;i<=5;i++){
//     for(int j=1;j<=i;j++){
//       stdout.write(" ");
//     }
//     for(int k=5;k>=i;k--){
//       stdout.write(i);
//     }
//     for(int l=4;l>=i;l--){
//       stdout.write(i);
//     }
//     stdout.writeln();
//   }
// }
//  111111111
//   2222222
//    33333
//     444
//      5

// void main(){
//   for(int i=1;i<=8;i++){
//     for(int j=1;j<=4;j++){
//       if(i%2==0){
//         stdout.write("*");
//       }
//       else{
//         stdout.write(i);
//       }
//
//     }
//     stdout.writeln();
//   }
// }
// 1111
// ****
// 3333
// ****
// 5555
// ****
// 7777
// ****
//

// void main() {
//   int n = 4;
//   int p;
//   for (int i = 1,p=0; i <= n; i++,p+=2) {
//     for (int j = 4; j >= i; j--) {
//       stdout.write(" ");
//     }
//     for (int l = 1; l <= i; l++) {
//       stdout.write(p);
//     }
//     stdout.writeln();
//   }
//
// }
//
//
//     0
//    22
//   444
//  6666

// void main(){
//   for(int i=1;i<=5;i++){
//     for(int j=1;j<=i;j++){
//       if(i%2==0){
//         stdout.write("2");
//       }else{
//         stdout.write("1");
//       }
//     }
//     stdout.writeln();
//   }
// }
// 1
// 22
// 111
// 2222
// 11111

// void main() {
//   int n = 5;
//   for (int i = 1, p = 1; i < n; i++, p++) {
//     for (int j = i; j <= n; j++) {
//       stdout.write(" ");
//     }
//     for (int j = 1; j < i; j++) {
//       stdout.write(p);
//     }
//     for (int j = 1; j <= i; j++) {
//       stdout.write(p);
//     }
//     stdout.writeln();
//   }
//
//   for(int i = 1, p = 5; i < n; i++, p--){
//     for (int j = i; j <= i; j++) {
//       stdout.write(" ");
//     }
//     for (int j = i; j < n; j++) {
//       stdout.write(p);
//     }
//     for (int j = i; j <= n; j++) {
//       stdout.write(p);
//     }
//     stdout.writeln();
//   }
// }\   1
//     222
//    33333
//   4444444
//  555555555
//   4444444
//    33333
//     222
//


// void main() {
//   for (int i = 1; i <= 5; i++) {
//     int p=1;
//     for (int j = 1; j <= i; j++) {
//       stdout.write(" ");
//     }
//     for(int k=5;k>=i;k--){
//       stdout.write(p++);
//     }
//     stdout.writeln();
//   }
// }
// 12345
// 1234
// 123
// 12
// 1 


// void main()
// {
//   for(int i=1;i<=5;i++){
// int p=1;
//     for(int j=5;j>=i;j--){
//       stdout.write(" ");
//     }
//
//     for(int k=1;k<=i;k++){
//
//       stdout.write(p++);
//     }
//     for(int k=2;k<=i;k++){
//
//       stdout.write(p++);
//     }
//     stdout.writeln();
//   }
// }
//      1
//     123
//    12345
//   1234567
//  123456789


// void main(){
//
//   for(int i=1;i<=5;i++){
//     int p=5;
//     for(int j=1;j<=i;j++){
//       stdout.write(p--);
//     }
//     stdout.writeln();
//   }
// }
// 5
// 54
// 543
// 5432
// 54321


// void main(){
//   int n=5;
//   for(int i=1,k=n;i<=n;i++,k--){
//     int p=k;
//     for(int j=1;j<=i;j++){
//       stdout.write(" ");
//     }
//     for(int k=5;k>=i;k--){
//       stdout.write(p--);
//     }
//     stdout.writeln();
//   }
// }
//  54321
//   4321
//    321
//     21
//      1



// void main(){
//   for(int i=1;i<=4;i++){
//     for(int l=4;l>=i;l--){
//       stdout.write(" ");
//     }
//     for(int j=1;j<=i;j++){
//       stdout.write(j);
//     }
//     for(int k=i-1;k>=1;k--){
//       stdout.write(k);
//     }
//     stdout.writeln();
//   }
// }
// //  1
//    121
//   12321
//  1234321