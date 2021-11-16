# linux,shell-commands
getopt, getopts, sed, awk


### getopt, getopts는 가변인자를 지정해줍니다.
---
getopts 기본 형식

getopts option_string varname
1. option_string 자리에는 옵션을 정의하는 문자를 지정해줍니다.
2. 문자 뒤에 ':'이 있으면 옵션 값을 받는 다는 의미입니다.
3. varname 자리에는 옵션명을 받을 변수입니다.
* 이 변수의 실제 값은 OPTARG에 저장됩니다.
 
getopt 

1. '-o'와 '--option' 같은 의미, '-l' 과 '--longoptions'는 같습니다.
2. -o는 짧은 옵션 Ex) -d, -a 등
3. -l은 긴 옵션 Ex) -diff,-help 등
4. -n은 getopt가 오류를 출력할 때 사용할 이름을 지정할 수 있습니다.

### sed명령어
---
_Stream Editor의 약자_

원본 텍스트 파일 편집하는 명령어

내부 버퍼를 사용하여 편집하는 에디터(원본은 변경되지 않음)

*-단 sed옵션에서 -i옵션을 지정한다면 원본이 바뀌게 됩니다.*

sed의 옵션

-n

:n 옵션을 주지 않고 sed명령어를 사용하면 자동으로 파일의 내용을 출력합니다

* n옵션은 sed명령어에서 가장 많이 사용할 것 같습니다.

-p (print)

 파일의 내용을 출력해줍니다.

* 첫번째 줄만 출력할 때

> sed -n '1p' ./sedtest.txt

* 첫째줄 부터 5번째 줄까지 출력할 때

> sed -n '1,5p' ./sedtest.txt

#### -s (substitute) 단어 치환

sed -n 's/치환할 문자열/치환된 문자열/전체(g),전체대소문자 구분 무시(gi)

#### -a,i(append, insert) 문자열 추가

* a=해당 문자열 아래에 추가(append)

* i= 전줄에 삽입(insert)

> sed -n /찾을 문자열/a\다음줄에 추가할 문자열

> sed -n /찾을 문자열/i\위에 삽입할 문자열

#### -c (change)

행의 내용을 바꿈

> sed -n /바꿀 행이 포함한 문자열/c\바꿀 행의 내용

### awk 명령어
---

유닉스에서 개발된 스크립트 언어로 텍스트가 저장되어 있는 파일을 필터링,추가,기타 가공을 하여 결과를 행과 열로 출력해줍니다.

->필드와 레코드를 이용하여 내용을 정리

![필드,레코드](https://user-images.githubusercontent.com/94299473/142022497-423945ef-d7a7-4193-ae8f-5f589fc3625d.PNG)


awk 기본형식 옵션



awk [option] [awk program][ARGUMENT]


option

1. -F : 필드 구분 문자 지정.
2. -f : awk program 파일 경로 지정
3. -v : awk program에서 사용될 variable값 지정
awk program

-f가 사용되지 않은 경우, awk가 실행할 awk program 코드를 지정합니다.

awk program 코드에는 다양한 표현식, 변수, 함수 등이 사용되기 때문에  작성 방법이 매우 다양하고 활용 방법도 다양합니다.

ARGUMENT
 * 입력 파일 또는 variable 값 지정

