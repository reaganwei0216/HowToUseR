# ��������(�ϥ�RCurl�])
# ��ƨӷ��Ghttp://www.omegahat.org/RCurl/RCurlJSS.pdf

# �w�ˮM��
# install.packages("RCurl")

# ���J�M��
library(RCurl)
library(XML)
# Ch3.1 Getting URIs P.8
# �ϥ�getURL�i�@���ʨ��o��HTML�����e�A����s���@���r��A������k�ä��O�D�`�a�n�A�|���äF�ܦh�T���C
# ��ĳ�i����Ū�A��ŪData�i���read.table() or scan()�A�ѪRHTML or XML �i�ϥ�htmlTreeParse() ��xmlTreeParse() 
w <- getURL("http://www.omegahat.org/")

# Ch3.2 Forms P.9
# RCurl�]�̴���getForm() �� postForm() ��� ���O�h���oGET ��POST
# �d�ҡA�HGoogle Search����
# �H����d�ߧ����E�A��X���G��The result is the HTML text that contains the search results in the usual format.
# postForm has the same user-level interface and only differs in how the underlying HTTP request is formed
getForm("http://www.google.com/search",q="�x�W�I�Ԥ�FORUM8",ie="BIG5")

# Ch3.3 Options controlling the request P.9
# the functions getURI() and getForm() provide the same basic functionality that is already available in R
# ���F���[�@�Ǧh�ܪ�protocols, ��HTTPS, FTPS�A �t�~RCurl �� libcurl �]���\�h�h�Ȼs�ƨ�ưѼ� �h�M�w the HTTP request and response and how they are sent and received

# P.10
# �w�q���[��T�h�M�w HTTP��request�A��p���Y�Ǻ����|�]���\���ɮצ�m���ӱN�����۰ʾɦV�h�L�B(redirection)�A
# ���ڭ̷|���Ӻ���������}�w���s�b�A�N��}��L�B�����p
# specify additional information to govern the HTTP request.
# �ڭ̥i�bgetURL��getForm����ƥh�]�w�@�ӰѼ�
# When submitting forms, one must use the .opts argument for specifying settings for the curl request.
# �ڭ̥i�N���X������input�����H�Ѽƪ��覡���� name = value, �]�i�H�ΰѼ� .opts=list(�ѼƦW=�Ѽƭ�)
# �o��ؼg�k�|�X�֡A�Ӧb�̫�Y�����ƥX�{�A�h�|�H�����g�b��Ƥ����ѼƬ��u���ޥ�
# ��ĳ�h�ϥ�.opt�o�ӰѼ�, �]�b��Ƥ��B�~�h�g���ѼơA�@��|�Ω��L�γ~
getURI( followlocation = TRUE)
getURI( .opts = list(followlocation = TRUE))

# Ch3.4 The Request Options P.10

#####
htmlParse(getURL("http://www.google.com",q="FORUM8",ie="BIG5"),encoding="UTF-8")