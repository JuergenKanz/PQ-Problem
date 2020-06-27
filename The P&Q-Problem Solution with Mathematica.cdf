(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.1' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    129449,       2465]
NotebookOptionsPosition[    121467,       2297]
NotebookOutlinePosition[    123594,       2356]
CellTagsIndexPosition[    123285,       2344]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["The P&Q-Problem Solution", "Title",
 Editable->True,
 Deletable->False,
 CellChangeTimes->{{3.7972216216436844`*^9, 3.7972216340968094`*^9}, {
  3.797241425777357*^9, 3.797241442286358*^9}, {3.797501433726712*^9, 
  3.7975014495503836`*^9}},
 CellTags->{"Examples", "Your Essay Title"},
 CellID->268474920,ExpressionUUID->"37a2fa84-d21a-4eb0-9290-243940573106"],

Cell[TextData[{
 ButtonBox["\[Copyright] J\[UDoubleDot]rgen Kanz",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://about.me/juergenkanz"], None},
  ButtonNote->"https://about.me/juergenkanz"],
 ", May 2020"
}], "Author",
 TaggingRules->{
  "ResourceType" -> "ComputationalEssay", "ResourceCreateNotebook" -> True, 
   "TemplateVersion" -> Inherited, "CreationTimestamp" -> 
   3.7969911826588504`17.332014577785912*^9, "UpdatedTimestamp" -> 
   3.7969911826588504`17.332014577785912*^9, "CompatibilityTest" -> 
   HoldComplete[
     BinaryDeserialize[
      ByteArray[{56, 67, 58, 120, 156, 133, 143, 205, 78, 131, 64, 20, 133, 
       163, 173, 110, 116, 213, 165, 79, 224, 6, 70, 11, 105, 138, 59, 197, 
       198, 184, 193, 70, 92, 184, 100, 24, 238, 164, 83, 7, 46, 153, 123, 41,
        229, 237, 29, 140, 186, 193, 196, 245, 249, 249, 206, 209, 115, 90, 
       164, 88, 183, 216, 53, 213, 230, 216, 58, 32, 50, 216, 232, 19, 58, 
       203, 0, 42, 202, 175, 95, 129, 176, 115, 10, 242, 129, 24, 234, 212, 
       26, 104, 184, 120, 4, 109, 26, 195, 222, 153, 33, 67, 137, 248, 81, 
       232, 83, 154, 229, 192, 62, 25, 252, 25, 217, 58, 115, 144, 12, 133, 
       69, 89, 253, 24, 222, 134, 22, 124, 238, 242, 222, 50, 184, 70, 178, 
       57, 0, 229, 87, 227, 156, 142, 229, 216, 46, 237, 134, 72, 14, 191, 
       133, 139, 169, 70, 243, 172, 179, 214, 99, 207, 159, 253, 11, 55, 14, 
       184, 72, 45, 118, 213, 75, 185, 7, 197, 249, 251, 142, 185, 165, 59, 
       33, 250, 190, 15, 123, 180, 218, 201, 90, 141, 122, 168, 176, 22, 88, 
       238, 133, 251, 110, 167, 175, 185, 98, 138, 72, 177, 97, 127, 65, 248, 
       215, 217, 195, 86, 178, 218, 133, 253, 81, 123, 208, 236, 9, 38, 188, 
       205, 191, 188, 106, 149, 68, 55, 75, 121, 27, 64, 164, 203, 32, 6, 41, 
       131, 36, 134, 117, 160, 228, 58, 74, 226, 74, 173, 202, 104, 249, 9, 
       89, 192, 149, 140}]]], "ToolsOpen" -> True, "StatusMessage" -> "", 
   "AttachedMoreInfoTag" -> "Author", "AttachedMoreInfoCell" -> 
   CellObject[7457]},
 CellChangeTimes->{{3.7972215970343103`*^9, 3.797221600893685*^9}, 
   3.7972414493653555`*^9, {3.797331211487839*^9, 3.7973312346128397`*^9}, {
   3.7975014867214985`*^9, 3.7975014867214985`*^9}, 3.797503873416893*^9, {
   3.7975039044894295`*^9, 3.797503906287428*^9}},
 CellTags->"AuthorName",
 CellID->205054650,ExpressionUUID->"554b7333-ed55-478e-980a-9398097dd564"],

Cell[TextData[{
 "The P&Q problem was presented by Goldratt (1990). It aims to permit \
discussion \[Dash] through a simple and easy example \[Dash] of the \
differences between the assumptions made by the TOC - Theory of Constraints \
and other management approaches, especially those that use some form of cost \
allocation. In the present article, the goal is to make use of this example \
and of scenarios derived from it to discuss the feasibility of optimal \
solutions in light of the TOC. The Integer Linear Programming technique will \
be used here to provide optimal solutions to the problems suggested.\n\nIn \
this problem, a specific enterprise manufactures and sells two types of \
products, P and Q, and for that four resources are required: A, B, C and D. \
Sales prices, costs of raw materials \[Dash] assumed here as the only TVC \
\[Dash] and the demand for each product, as well as the unit processing time, \
in minutes, required for each resource are shown in the image.\n\nThese \
resources are paid to operate for 2400 minutes/week, and all the enterprise\
\[CloseCurlyQuote]s costs and expenses, except for those associated with raw \
materials, correspond to $6000/week. The question is how many P and Q must be \
produced and sold so that the enterprise\[CloseCurlyQuote]s profit is \
maximized. One can readily see that, in contrast to the other resources, \
resource B does not present enough capacity to meet the weekly P and Q \
demand. For this, 3000 minutes would be necessary, or 125% of available \
capacity. It is necessary to decide on a product  mix that would maximize the \
profit of this enterprise.\n\n",
 Cell[BoxData[
  GraphicsBox[
   TagBox[RasterBox[CompressedData["
1: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
ZHnMSa4ZTPKKaky33NZpjpu7KuL6l2o+b5ztqflT23PRP4dpOaUtrfWvsU4/
rk15IP04M73fZX1+1deAvBWagp5v1aOOPZXJv9RE5Y5neqlUO6i9ApprttN/
6EN3HPKemyEy4s5DUnu13/fxkmGc3JV+X33+q85ps+b+6nzb9B1Sz8PY1uft
0G6Xdls19zZOv3l1O7ZaI9f9b7XWvxa29VUu+S2xoN12kr3a0yLJa9mocwrX
9X/qeeAi1n+k1TbloR4ftvHAtDbVVneX1kPL5bESWZ/Psj6/uyw/b3LeSsbO
rHWZ8hon/cXGOR7hRxXm+jJ2qOco8pLj1NT3Lumhl+e4LHJbo1Bz81xvJr8q
HM/r0Eul2lGjXioACjSz+OQbZrv9lz58p+RG6hdffej44B+OvjD4nydeHvzL
878Y6F4+87+GP+//84uDb68+N/jUnx7zvs/jhKwbnOs8/kbfx02KInNXam2S
3js7q44nq6e1+j0pq/+RS+1Kq7WxrmRU6utgW1uWZ//VPIapHixPjkavCyv7
O6b+mmaFLV9hO67SqK/buLkrvX5sHC7XKkxydfK/ag7DRD2W9NdGzfml5UeF
mgPV81xlfn6TY1DNjTU5byVcc75qPNiin32d+Jzr2+pw83Dpe+eS5y56W6NS
/46W+TihqlTuil4q9Yia9FIBUCBZgza3dPD0h+48MqhTfGv1ucHPTp3ZkKty
ceRfTw/+4G9+4v05jBLzSwdfnOv2bvJ93KQoMne1xfI7l9qzrD5Jeb4nqfP3
rLld0bkrl3xD1v5n1XHl/c446e+YchzIa6LnIuTn8tz0Hkmm5+g7d5XVCz2v
tJySmifarT226bknvzPlSbNyZGm3V5X9+SVvtZ4+huhrbZP6FNN8n3l3Pfia
60sdpC1P5Cqt752p12TaMVnktsahPs6oa+SbrFK5K3qp1CNq0ksFQIHmllb/
dn7pkPecjGvc9tDxwcmXfjlSzkr36I9PeX8+ueOOQ9FY3X/U93GTosjclUrN
I5j6HumhzmXHzdek1aXo8j532d7OlH0vIneVlQdQv3O75HUq9R0zpr9m+vMY
pVasyNyVOtcrYl6T1hNYXecq/1bndvq8Tb2tvh2X/IcePj6/ah5PXuem561E
nnHYlP8lf1V9kx6H5XOl9trTP3uuf/P09ay23pD6mG5a81fktsahjqNV7+tQ
VZX6XkEvlZpEPXqpAChQND6fnr/z8GBeanoqHlJrVTSp3brxT495f255Ihqn
X5Z6Zt/HjsU4uSu937PK1L/HNaqWu5LvzfocIC2y9mnc3FVazmfcx54UmVel
zWF8XmdQzR1lre90lXbNQnXtyqbW+jos/Tte2rWdRll35uPzq69dKqKure7y
jsOm61KwfrDaJj0Oq/lN+beMF6P8vc/KS9se05SXKnJb41D3I2ttNcwq872i
br1U/vLAz4b9UVzJ+X/ppfKDH58a3tf3/jeglwqAgsx1Vtuznf4p37kYl5Aa
qTTS70puc9f/eHpdyM/kd2njet3yV3NLq8/Nd3sX+j5+LMbJXaV9Dx1n7uva
L8emyNyVvr6B3FVx9HyG7XeTzl2pecoi5zW23u9JDkJ9DdTnotZ9qdvQ65XG
yV3pObKyP7/69puedxllHNZ72dFvutomPQ6rn8dkrBglR6rePqv+Sf17qefo
i9zWOFz6DyJbZb5X1K2XynFDr988JJcltQG+n8eoUYNeKgAKEn3W/2M0Pp+Z
u+PIoMrxrb693urIT08P/u+//knmNn77T44N81i2HNaPf/ay9+fpHEtPnpld
7H/e9/FjMU7uSq2b0eerRa7farX85K706/nJ/F6+T+tryIrud9WU3FXaMaLm
RV1rn7KudecirT5qXGrNVPI+bDL8TKg1jUn+TN0302syzmdZN4nPr/qzpq8d
HPW90++XddzLa2y6tlty/cKs9yA5htXPhhyXC631fw/k+DTlfbdrtz0R39Zl
TZg8zs749vqayf3xvmWt77Xtv95nSbaXZ6xMXle1Fi7p45S8pi7j8JbW+usA
jrNeWV5n/e9D3uNMXVvnkhvV80Lq4xe5rXGMW1ebdV0K222zjif19UnbL9l/
vfddcm3GPMfLuGOB6/Gct8dBbnXrpVIUyYH9zp8e8/58ckf1e6kAKMhsZ/Xx
2Wh8nr3jSGXj//rrnxjzTfKzrz/ydO7tfeXvjlt7vP+X/nPen69bHBrMdfr/
6Pv4sRh1zqTXI+lzj6L7SfjIXbmub5h07krdlst6q6rmrtT6Jv15qt/5XeY5
+vUNR53zpfWlGpep/7n6OVGPVTVvmsxjTPksVZH1BJP4/OrrRovIkdXVOHlH
17VVLtd2k9+n5b/U91Ho68b1UPdnd8Zt02oc89QBpm0n7/67XEdAzTelvaYu
43DZ9Yh5jzN1f0Y5h6D+fSpyW+NQ34dRznGoY2PW+Q31sbL+jmVdH0TPA9nC
5W980WOB6TH1z0Vp1+SoUy+V+QJzV6Ju61BeXY9S7V4qAAoy2+mdnrvjcAVy
MfYw1cJK3kpyUKNu85N/csyaD5Pf+X7OLhGN06/4Pn4sRl2rkjXn1HMJ435n
8ZG7UreTNh+adO4qT02Svq6oSrmrtP3Sa96yclHqHHScXEvZ54jVz428N8l7
aZoDHdV+p+b6bK9HEbVnrdbkPr/6Z6epPcfHyV2pOSHb/Djt2m4LrY1zYlsd
lPo+quNQ0s/fdJ24pFZK/Xwmt9Xnz7bjWt/3hdb66wS4bidt/5PXQ+8jljbG
6vPzE8q+6ful/rsuuasi1277XAeeKKquVn0v02oG9XxQ2t8x25ryViv9OJPj
Vj9m0/J8ZYwF+nuj9+MrLW9Vp14qabkr221v+ZufDO478LPh9dZtZN7l+znl
zl1Vu5cKgAJIL8JojH7Zdw4mLaSuyuThoy9UetsTyl2dnFl84i2+jyODvN9l
5buX/j3J9t1Gvd243zt9567Svgum9aw3bWvc3JX+3dP2fdjUz7kquSv9NTM9
B9d6Ej0/N+r5eTVfVlbvIL1HcLLfpvmxelt17pKWm1PzGOPWMU3q86vP18fJ
udXVOLkrfTzQ6XlI0+dDzaOmHf/6+iKXeasa+jkA/bNr+5wn+SrbeK5vx5YD
Ne2/6bb6+OQyf5fnrI9jmyyPOYk1gyaTzl3ttvx83G2NSh1rxtmemou1PRdT
/0Hb36asvz36Z8SUB3L5m1rWWKC+BhPLW4m69FJRw8TlftJvxbYORXq1+H5e
AfVSAVCAue7KBbPd1ZMz0We+qiE9qEznA8rcvvQs9P28naK7+uz8Uv8S38eR
get3WfnOI99P9PPbafVIO7TbZn1f3ZJyG99rBk3fv+S/Tetgxt3/rNyV0Huz
6PtmyjHmmTON8l1ze3zfrP7meq7CNofQ5+S279n6uoxRvyeb+lEVTf1MZOVG
89w2oV+DXuZYaa9H0kPINM+Z5OdX731V9Jy96sbJXen31V87dRzLmq9n1e3p
eRjbZ10/dtJuq37Ox8kZq9uxjZuu+99qZder6rWhafU3C9ptfZ1DyHucqX9D
XM8J2PLnRW5rVGm1TXmox5rtXIJpnauthi+th5bLYyWyPutljQW2+rpS81ai
Dr1U9DBxva+sNZF5j2ku5Pt55YtK91IBUIDZTv+62e7B0zNLRwZVjE8sHzOO
x1IvVdRj2GqvZD2i7+efFdF79+LsUv/Tvo8jA/277IOGsPVFcLkGm/6dXa11
T0J/DNN3Sh+5K/0cpeyjWltve12y9qmI3JU+N9T3Tf25S7/YItaqmI4l9X1e
bm18zbK+2+pzzWS9kW1NzjjzEXVbZeVO9J5Uacd8ntuq9JxfMmfS3wuXWrVJ
fX71dchF9NiqkyJzV+pnVz+G8qy9zbpeZNZ6ZfVxs/Ktoz53lfo62NaD5dl/
dUw01YPlyatUZe123uNslL8J6uumvi5FbmsU6nMft67WpbdgkquT/1XHNpO0
7yxqzi/rO5eaT9XH0DLHguR4zjrfV7g69FIpMnclkTYX8v3c8kSFe6kAKMBc
p7cws/TkYHrpSCXjQcO1BeU8QNGPYzrf8PCRF7w//6yY6R4azC31v+n7ODIw
1bVnhXxnyZMjyOrRq8+NTXzkroQpD6BHMn93/W5aRO7KZd/ku+MWbXtl5q70
mh+X1y2LfPdV12fYQuYi4+St9BqnMunPJ20epefuXOdcLr141Uh77Sb1+W1y
76sic1dbLL9zyQfmuU5E1udXnXOPOw67KLrvYFYdV941cFW4ZkaTc1dZvdDz
SsspqXmi3dpjm5572vipvm4uuSDb+1v2WDDxvFUdeqmUkbuSMM6FatJDRcld
VbWXCoACzHT7j0wvHRpcsXSkknH4pxv7CK7804uFP45sUydrCX0//6yQ9y4a
p7/v+zgycMk3yPcQ+Z5iW1vk+ji7W+beH/Iz+d4j3/9s33fU+XNWP5wkN+BS
h6P3wzbZ0trYwzTpv5K8HsvKz8fdf/XcaVqfJ3Xf9JqVndptsh67qD4r8v5N
x/ukv9cnWqMfR/I9Wq8VUrc37vdkNZ/kUk84jjxr8fTb5plzbYpvb6qdlGNk
ueX+Xkzq86vmC8bppVw3ReauVOrcP+mnnhbq/HPcfE2R5xB0sr2dKfteRO4q
a+6e97oOdcxdjVIrZss3FbmtURRdV5t2TVp13JZ/q+OanpNXb6tvR3+/sj6/
+jkoVZljgZrHk9e59LyVqEMvFVOY5N3GEcOc6/s/PuX9uQXSSwVAAea6qweq
nLt6wXAO4M9/8LPCH0e2qZPH9v38M3NX3UOD2U7/iO/jCMAGLus/gDKNk7tK
u1aEqeeOa1QtdyX5dZcazEnlrtTHCjV3NW5/dVsfpHG3lZeaO8paK+oq7ZqF
aq5+U2v93xi95iktrz9KXbyPsUA/p1FEXVumqvdSsYUxd5VzG5KnMp3H9/3c
AumlAqAAs53Vw1XOXZl85q9/UvjjfOnvjhsfy/fzz4yujNO9n/o+jgBskHb+
HJiEcXJXafUR48xXXXvc2Ex67Ta5q2xNzV2VVVdr6/2e1CGpx436XNS6L3Ub
+nmTcXJXeo6s7LGgiL4DuVS9l4otTPJuw5S7kvUvvp9bIL1UABRgrtt7+oru
4cEHu0cqF/u+Y+4bWNbjmXzpb497fx2yYrbTf873cQRgA3W9Q9Z6TqAM4+Su
1LVQ+hyzyDVXrZaf3JV+PT/5vEr+QV/3VXS/K3JX6/OirvVKtuvTFbmtPNLq
o8ZlujbtJsPPhHqOJMmfqftmek3GGRd0kxgL9OvFllrDXPVeKnnO9efdhil3
JT/z/dzyRIV7qQAoQPT5PuE795Ind/XMqTMTzV3JPvh+HbIieg/H/e4BoFjq
vHjca08Boxp1jqrXI+n9/dReOkVcu9FH7iqr705i0rkrdVsua6TqmLtS8y0u
46N+zUg1v1jktvIos67W1P9c/cypx736tybJU5nyWaoi17NPYizQrxdb6nVP
qt5Lpczc1fHnf7FhG39/5AXvzy1X7opeKkDQJO9xefdIJUPGS90/P/eL0h5P
8mK6O7/ztPfXISvIXQGVo36fn0iPDsBglNyVyzxRn/+PWwfhI3elbidtvdek
c1d56ojkdR+lV3nR8h5nes1bVv5IzcXo+ZEit5VH3p76eamfQXmfk+PCVOOl
XxtGXctoez2KqD1rtSY3FkzserFV76VSVu7qt5aPGbchPVV8P7dc0aWXChCy
Kueu9v9oY+1qmbkr2Ta5KwBAIPLmFGQeqq51NdVcJdTbjZsz8Z27Sssvp/Ws
N21r3NyVXvNmyz1IjkB/r+qSuxJq7iStbknPz5neqyK35WISdbVqDnO6dXa/
TflM9bbqtX3TcnPqusRx65gmNRbova9KWYtf5V4qedeO5Lm/ac4l16zy/bxG
CXqpAOGSNYOXdQ4Pqhi23FVZj2fOXf2r99chK8hdAQAMXHMKkh+ReeEJ7fZp
9Ug7tNtmzVm3pNzG95pBmXvr9SLy3+r8flK5K6HmV0z7Zsoxpj22ms84atje
uEbJXek5OlMeSfZTfW1t+17ktlyY+lEVTf18ZeVZ89w2IceQ+nmXnFja67E5
3p4plzrJsUDvfTXqmk+rKvdSKSt3Jb19TWQe5vt5jRLMi4BwyfmFyzuHvOdf
yF2NHpxfAAAY6DmFBw2h56tc8lYJNf+TzCXlZ7uU0B/DVMflI3elr3WSfdwd
P/5Cy/66ZO1TEbkrPReg75v6c7UuzPbYRV6rbUdr/fur79PA8HvbsfSgdr/9
2jbV90D+basBLHpbWdRtFZ47iek9qdI+P3luqzJdZ1NyWOp7J//tUqs2qbFA
X9NcRI+tdaq8HiUtTFzu92c/+NngpTP/a8N9pebq+nuOeX9erEcBoIo+3//4
wc6T3vMvVchdvXD6l/XMXbGuGwCwkZ67cgmZO+aZ15tqk2xhux6bj9yVMM3d
9Ujm3JPMXbnsm8zZt2jbm0TuypbTywoTyUMsO9xXcidZx2SR20qj1ziVSX8+
aesT9dyd61pGOc7yvKdpr92kxoJSe181IXf1xb89Pnig/5zxnP3Z+U/1e6aQ
uwKaZ6a7euDyzpODSzuHKhf3PvqMIXf1cmmPZ3LHd37q/XVIC3nvZru9H/o+
jgAAlaOvC7LlQGS+aFsP5Po4u1sb58/J/F7qL2SObFuTpM55s3rYJPN5l9oZ
vYe1yZZ4/9TakqPxz5LXY1n5+bj7r/ZKyro+XbJvep3JTu02WY+trxkcp1bI
9B5nRVZtjOQi9PqeE62zx2WetX1FbstEzSe51CaOI89aPP22eXp5bYpvb6rD
lPduueU+PkxqLFBzu2mf79yq3EslLYr0QO9Z789nnCB3BYRrptt/5PLFg4NL
Fw9VLu74h58ax9QyHuu6b/5wYo9VZKzlrvrf930cAQAABExfm1d03zBUQJV7
qZSdu5K1g3VYb5IV9FIBwjXb6S18sFPN3NUX/us/TyyfZMqTyRju+zXICnnv
Zru9P/F9HAEAAARM7S2WVTOHmqpyL5Wyclcy35E+LR//4x96fx6F5K7opQIE
a77bu+GKxf7pD9z+5KCKYXLHf/9p4Y/z3w4/v+FxZH2i7+efFdOLqy/OdXs3
+T6OAAAAAqZe2zFrbShqqsq9VPL2PbGR/r4yx3niJz8f9mfxve/0UgHgaq67
csFMp3/Sdw7GFs+cOrNhzJU8U9GP86NnXtrwON87dtL788/MXXVWT8wv9S/x
fRwBAAAESu0r5toHHTVU5V4qaWHie598BL1UgLBdua/3K7Od/su+czC2OPQv
L24YiyXPVPTjvHTmlQ2PU0Z9V9Ex0+k/P7+0+lbfxxEAAECg1F7oefqgo2aq
3EuF3FV20EsFCN9Mp3f6A7cfHLy/gvE3KyeM4/G//6sfl/oYksvy/dxdYq7b
f+X8zzz0Gt/HEAAAAFBnVe+lYgsT3/vkI+ilAoRvttvrXXb76uD9ew9WLj72
jaPG8VjW8xX1GLLuW/f4T055f+5ZcentBwcznd4/+j5+AAAAgLqrei8VclcZ
uSt6qQDBm+v0/9MHb1894zsXYwvTusFh7dVf/njsbUsOrKxtlx2XR+9Z9Df2
Nt/HD1ARJ1qs5wAAACOqei8VclfpQS8VIHxzndW2nGO4ZO/qoIrx+3/5I+OY
/MypXwyu/caRkbf7J99/2rhdyZX5fs4uMb3Yf3a+27vQ9/EDVETSi2SX7x0B
AAD1VOVeKrYw8b1P9FIBUAb5jM91+i+/X3IiC9UMW+3VMyd/Mbj27iO5tyc9
rkz92eVno2zPR8h7dvltvdf5Pn6ACtjcOpu7mva8LwAAoKaq3EvFFsbcVQX2
a5JBLxWgOWYWe//t0grnriSfZMo1JfkmyUW5bOf37/vR4NgzLxm3I7oP/4v3
5+oSl0Z/U2c7/Ud9HzcVtqm1tnZManB2eN4XlG9762zuarvnfQEAADVV9V4q
5K7MQS8VoDnkuhofvL132ndOJi3+6Fs/seavkhyW1Gf9f4eeG+agkpC1gd89
9sKwRiuN3F8ew/fzdIkrFvsvznb6N/s+blJIHczR1tl8gikejGKhVU6uYaf2
WFtKeAz4JTlJOX7040z6Xi231uqvNuXcptx+t7KthRH2S459yZk+qO3X/nh7
eY7FIrcFAAAyVL2XiilMfO8TvVQAlGWtN2HvpUsW+oOLKxyf+9ZTqfmrIkju
y/fzzIrob+qpaHx+s+/jJoVaB+MSkmvIm2dIs0vbPrU44ZB8jp7LscXR+PYu
trQ25sEezLlvki9Lesanxe4JbwsAADioQy8VPYy5qwrs1ySDXipAs8wu9r5z
6d7+4OKvVjt+7y+ODf7puZdLzV/J9uVxfD9XU8h7NNftH/B9vGTQc1e7tDDV
y0gtSVH5K3n8ZN5f5Hbhl7yPpvySemzt137vct1BPdc5Su5qWruv7OfueNu7
DfudlnMqclsAACCHqvdSIXe1PuilAjTPzOLq9BWL/VO+czOu0X34+Mg5rCf/
5cVhbuqvn/hZ6u0ef+rU4Jq7Dnt/rmpcsdh7Phqfr/N9vGTQc1c2es6AOTjS
SM5TXRtoWzMntVbLrezrDsr99VyX+t+uuavNrfU1Ura1hur+29ayFrktAACQ
Ux16qZC7Ohs16KUCoGBX7jv2Wrku7MVf7Q3ed1t94qa/+OHgoSefHeaj/ulZ
cy5Lfi6/l1zVNV8/tO7+f/hf0tchyu/kvnI7389V3ht5j2YWn3yD7+Mlg2vu
Sixrt6VGCjZqTselB7/cxrZmUL02YZKnkvzPrlb+3JWaR8q6j1ozZcpLFbkt
AACQU116qSRh4nuf6KUCoGyziyt/fOntvVd852h85L9seS+V5Mh87uelC71X
Zjv9v/Z9nDjIk7vaot2W3lQw0XNN40qOUcmHqesK8+auNmn7lVX/pK4HPFHi
tgAAwIjq0ktFQtaJqI49c9r7Pk0qatJLBUAJZju9t0Xx4sUVyCf5iO/+8IXU
3JXkt3zu30yn//xcd+UC38eJgzy5q5Z2W32Nl7qGKskxyBx/Qfm51J/ssNxn
v+P+LrfW17EcbblfB3FzfFt1vZk8vuQ+ph3uv0m5r9zPpaaoafRjatz6vOQ9
0+uy8uaudrTWHzNZ9PyUenwVuS0AmDT9bzVQW3XrpdLUqEkvFQAlmen0vnXp
3t4r771tZdDESKvBkp/72q/3L6y8MttZ/R++jw9HReautmu/k1oU0/XXdlnu
k/b4Mvd3uWZd2nqs3Q73399Kr6Ex9bbHRuprVNbcKG/uSr39suNjqDlSW83X
uNsCgEnjbxiCUddeKk2KGvVSAVASqb2a6fRPv2/PyuC9DY7O3//z4IXTv9yY
u/K0P9OLvVM1qbkS4+Su9JojdVuSJ1LzVpITSnJPeXNXaq2Tmi9Irlen9+Ey
1bTo/bL3a/dX9/Voy14rRO7KjZpnlNe2jDqjvLkrdZ9c3zfbfYrcFgBMkrqu
26XeGKi8pvZSqUvUqJcKgBJNd/p/F40H3vNHVQjJYcm6cenZLmsKfezDB6L3
IhqbXda+VUWe3NUO7bb6Gi59W6a8xSbtfi6Pr+YobNesk20muQE9T6L3GjLl
UeT+an7MVr/FmkE3pmNBXtMir7E36dzVbsvPx90W4JuMa1ILKMcyY1r41PGZ
9csIQtN7qVQ9atRLBUCJhrVXi73T773ticFFewif8d4o5PoZNRub8+Su1NyO
KVdgyldk5SqyHl/mVGpNVNY54p2tjTVT6lqttHmZ3mOc6yiOR80ZqiHvh7xP
tusKusqbu1KPX9c1e+o6U/UxitwWIJ8FdZwyhRwzrn398tqpPVaROWZUg/zt
k+NHP87k76vUHst47fo3b7q1sV5Z3U4ecuzLWK73BNjfKv58BwLX9F4qVY2a
9VIBULIZqZNd6P3ioq88MSD8xaV7n3h5trvyV76Ph5xc1+y5rMsbZT1d1uOr
+Q+Xnti6vD211edJ/cH45P1Nm5Mvt0afi+fNXWUdv3keo8htAaa8f1rI56bI
3Lp6bFKLExa1JjkrjrbSzylsaWXnWJPxzeX4lL/vpp6YelCnCif0Uqlm1KyX
CoCSSd+7mcXeC5fc5j9/09R4354nZK3gqbnO42/0fTzkZMo3qaGfW02rM8nb
O8vlPmqfqrQ+7DbqnMzl+696e3oSFUfeZ73nmBrjvrfkrlBnWeOwqV5G6lKK
yl/J46vXe6XmNAzyPurHjYw96rGl95K0/X3Xr70i/15I2U5W7wS9Llf2c3e8
rd2G/SZ/BSf0UqlW1LCXCoAJmO8e/Nh0p/fz3/zK4wNi8jG9uHJyttuvY64j
z/l++a6ath6gjNzVuP2t1fvr39lNQT/tcslcSo4hUx1A3vxV3lyQOhdyfW9t
j1HktgDXsVOvj2I+jzTq+QJbr0ghtVZJzbFtPFPHvP0tc32Wno+yfV/Y3Fqf
B7ON/fr5DtYPIhO9VKoTNe2lAmBCovF65QMLT3jP4zQtLvnqilz39R/P/8xD
r/F9DIwgK3cl31dde2GUnbsaZQ2f61oJU5C7Kpda65G3hklwnUGEIs/Yqa/f
pkYKNur46vL3U26TlZOSbaYdc2q+ybZOX71N1tit5sxGqc9FA9FLpRpR014q
ACYkucaGrF/7zS8/Tkwg3rvn8YG85nOd1bbv939Eo+SbitxWlXNX9Lsqn74O
Jc/chNwVQpFn7Nyi3ZbeVDDRrz0yDjVfmjVG64+r10ptyvi9Ts+bAZnopeI/
atxLBcAEzS32r57p9H/+m19+bLCDKDXkNZb+gzVdK5ioU+5q3DWDdX6fQpbn
HLwqb+5KfZxlx8ewXaOyyG0BecfOtPpQdT1W0rtI8gULys/lWNxhuY9LXxLZ
3+XW+mP6aMv9Ooib49uqPZLk8eVz7HKduk3KfeV+fJ420o+pcerz8o5daddh
zXv9FD3XRa4WTuil4jdq3EsFwITNdVaXP3j7ys9953ZCj0sXnnhxZnHlAd/v
95iqnrtSz/eO0ttl95j3R/lG7QOV9347W/nmTHr9gLqWpshtAUXmrrZrv9Nr
G033c318ySO41LKm1ebsTrlfEvtb6fU4o1zTtonU18jWgz3vdlxyR2l/t9Vx
e5S8/zjPAw1DLxU/UfNeKgAm7Mp9x14bjdeH3//VJ17Z8aXHBkTxccltj78y
u9j7p8tv673O9/s9pqrnrvLmCHTqegOuc1JNo9Qwiby5K32tVVb+SD329GOn
yG0B4+Su9DoYdVuSN1DzVnLsJbmnvLkrtdZJ/byq16TNynHovbf3a/dX9/Vo
y14rRO7KjZpnlNd21JqlvLmrtLGZ9daYGHqpTD4C6KUCwIP5bu/Na+P1Y4P3
fOkAUWC89yuPDWQdvfxN9P0+F6DquSu9XiVrvYL8Xp3vsN6g2uT9UeerLuuF
EqPUa7n2/dWvLW8611/kttBsecbOHdpt9byp6fobet5ik3Y/l8dXP2+2a9bJ
NpM8gz7W6n2LTGOx3F/Nj9k+V6wZdGM6FuQ1zXu9vrzjV5m5K+qnkQu9VCYX
gfRSAeDJzGJvu+RYJNfiO98TSlwUvZaznd5LAV3vteq5K6GfO7bNmZLz/vqc
SF2j4jLPkd/bcij6nIlc2EYyN5K5Tta1KeV9VOepaXUWJqPkrvRruJvmYfq6
KNt+FbktNFuesVP9zJiOe1O+IitXkfX4eXPMO1sbj3PXnkn6+Qo+L+PRxyl1
LJL3yWX9slpT51I3mjY2p/XCslH/hudZVw4M0UtlMhFILxUAHkmORXItF0Vj
ynu+eIAYI+Q1nBleM6N3me/3tUB1yF2pfYSTyLNWxbTWRb6371a2If/Wc2Qu
+8u5pY30fjjy3/prrb8ftpxkYqdy/yT0nJD+e1teUd8/dd2S2s/aZb+K3Baa
y3XNnsu6vFHGqKzHV/Mfo6zdztufW32e1FSNT95fNXeox3Ir/TyMnv9KqzOd
1h5LzzVlHb8mo/ZEBIbopVJ+BNRLBYBnkmuRnMtvfvnA4MIv/oAYIXZEr91M
Z+Xk3O29K32/nwWrQ+5KyJw/7bu3+h3cdJ7etcewuh2X/SV3tZHMNU29oW0h
70taTkfvLZVnuyamHIApjmbsV9HbQnOZxhU19F5QEraalTLGYbVPVVrewkbN
Pbis+VJvzxhbHHmf9Z5jrjmprPM/pmOU3BUqg14q5UVgvVQAVMDs7StXzMi1
Yslf5Q55zWRMnuusfsr3+1gC9RpU4/aQznud9bz3kTyBzNdMtS7yHdolN5B8
dzfV/ST1QWnn+emz4kZeJzn/Lq+1KWeYvNYucxd9vZJrZM2R5bFlvqXmRJPj
wLTmaVLbQvOY1vnZQo6rtDV7ZeSuxu2Vrd7/wdbG3FxaTSW5q+Il47NpbE7r
MeZ6/kd/v1XqGOn63pK7QiHopVJ8BNhLBUBFSP2VnHOQtW8XfuEHhEPE6wRD
rLcCJimZyzDvADbKyl3JfF9yo1k95EzbGuXxdWouYpR8fZ6aVz3IXZVL3nv9
3EDW+kFTjVWSp5fzUWl1dlxnEF7RS6W4CLSXCoAKkXMOkr9671cO/PLdX3h0
QNjjoi8f+OXM4soL893ehb7fN6DmknPtXCMK2Kjqa7d95q6obS2fWn+dVnvl
Ss1d6WtbyV3BO3qpjB8B91IBUDEzi0+8ZWax9+wltz1+xnd+qKpx8Z4DL812
es9Irs/3+wUEgHkHYFen3NW4awYZA6pJ7YM1bn2suiZfX8uvPo6tr6TO9RqV
gDN6qYwegfdSAVBBV+w9+KbZxd7jH9z7xEkZh3zniqoS7/nio4PL9j7x/Gy3
f1D6Ovp+n4BAMG8F7Kqeu1KvRzBK7eTuMe+P8hXVU2qzsh3TNSV3Zvw+bXuD
+L+BQtBLJX/QSwWAL+d/5qHXzHR6n5tZ7J266EsHBu/+/KONjt/8ktS/9l6Y
7vRvl+vp+n5/gECo61G41h6wUdVzV3nzDbpp5f7jXhME5RilHiprO6ZzFfp1
Y7NyUeqxx7GDwtFLxT3opQKgCmYX+++c6fSeef9tj52Wseldn/9+4+LiPY+9
PNuJxuOl/iW+3w8AQKNUPXel175krduS36s95Tdp92ctfrXo13JNu45lGjVH
eaJlv66AugYwrbfWJu22eu8soBD0UskOeqkAqJIr9/V+ZWZx5YHpxZUXLvry
D7znkiYVUms1vdh7PhqLH5rrPP5G3+8DAKBxqp67EmrPKslLmGooJceVrC/U
5zfqukG5v0v+y5ZDkZxG0lPphOGxsJYTkrxP1rUp5X1U+1MdNdx+U8Z25Ofq
msOs/Oa0dltTTkq2qR5zpv0CCkMvFXPQSwVAlUkN1myn9z8vW3ji1IVf+P7g
N/5of5Dx7ui5Xbb38eejv1P/RK0VAMCjOuSuJC91Qrud5Kl2xbGs/U7PJ6n5
JjUfsVvZhvxbz5G57C999DbSr+0o/62/1vr7YctJbte2s6u1/n3XjwuXui19
//Yr21zQtmnbL6BQ9FJZH/RSAVAHMnbLtSPkGhLv3/PYL0LKYb37898fXLLn
sdPD62Msrv5HxmIAgGd1yF0JyR8c1W5rCslnmGpk9Foal+247C+5q42k7knP
KaWFvC+2/JDeo8oWR1vu1wGUY0HPd9q2Sd4KE0UvFXqpAKgfWUc42+ktRPHz
D3z1sRfrnMOS8wcf+Orjp2YWe6flOclz8/36AgDQWn89g3H7Uav1Ua7bynMf
yTnIGi9T3YzU8rjkGST3tNAy1/0k9UFpORB9zaBrvqRpkrV+8lqbcobJa+2y
5tL2nkluabk1eo+s7fH91ZxochzsbLFOEJ7QS4VeKgDq6cp9B14/2+n9wUyn
d+rShcdP7vjCo4Pf+Nz+WsSOLz46uHThiedl32c7K7eSswIAAA2U5K8e9L0j
QF3QSwUA6knW1w3XEnZ6/zy9uHLy4q88dkZy9O/83PcqFe/+/P7BxV85cOaK
26W3YO+na2sDD7ze9+sHAADgSVLbtNv3jgB1Qi8VAKi3aAxvz3RXbpvtrJy8
Yu/Kc+/98oFhzshXvkpyaLIPH7z98ROyTzOdla9xHVcAAIAh+oMBY6CXCgDU
m5yLmO2sXDTT6S1HY9+/zgzH88efu+hLjw7eFY2N/+YPv1tKyLblMeSxZhZX
Xogfe1nqXDlnAAAAsA65K6AA9FIBgDBcsffgm6Lx/CrJI0Xxk7lO/+UrFnsn
Lv3q4ycu2fOD05Jves8Xvj+QcxWSf5L4jc9979WclPw7+bncRm4r95H7Xrrw
2M+u2LvyMzlHMLO4cjzOl10lj+n7eQMAAFSUej0ArtsHFIBeKgAQFhnX55dW
3zrX6V022+nfHI2ZfxGN8Y/OLPZ+ONvp/VTW9811+4PpL39nIP8rIT9b+13/
x3JbuU/088+ubaP3NuqqAAAAAFQBvVQAoBnOP//81543NXUw+l/OAQAAAACo
HXqpAEDYzmu3b4xicN7U1Gd97wsAAAAAjIteKgAQDqm5OrfdPi65q3Onpp6l
9goAAABAaOilAgD19WrNVRLUXgEAAABoIHqpAED1qDVXSVB7BQAAAKCJ6KUC
ANWzoeaK2isAAAAADUQvFQCoHlPNFbVXAAAAAJqIXioAUD3WmivGagAAAAAN
Qi8VAKietJorxmoAAAAATUIvFQConsyaK8ZqAAAAAA1ALxUAqB6XmivGagAA
AABNQC8VAKge55orxmoAAAAAAaOXCgDUhzo2+94XAAAAAJgEeqkAQH2QuwIA
AADQJPRSAYB6IXcFAAAAoEnopQIA9ULuCgAAAEDTMS8CgOpijAYAAADQdMyL
AKC6GKMBAAAANB3zIgCoLsZoAAAAAE3HvAgAqosxGgAAAEDTMS8CgOpijAYA
AADQdMyLAKC6GKMBAAAANB3zIgCoLsZoAAAAAE3HvAgAqosxGgAAAEDTMS8C
gOpijAYAAADQdMyLAKC6GKMBAAAANB3zIgCoLsZoAAAAAE3HvAgAqosxGgAA
AEDTMS8CgOpijAYAAADQdMyLAKC6GKMBAAAANB3zIgCoLsZoAAAAAE3HvAgA
qosxGgAAAEDTMS8CgOpijAYAAADQdMyLAKC6GKMBAAAANB3zIgCoLsZoAAAA
AE3HvAgAqosxGgAAAEDTMS8CgOpijAYAAADQdMyLAKC6GKMBAAAANB3zIgCo
LsZoAAAAAE3HvAgAqosxGgAAAEDTMS8CgOpijAYAAADQdMyLAKC6GKMBAAAA
NB3zIgCoLsZoAAAAAE3HvAgAqosxGgAAAEDTMS8CgOpijAYAAADQdMyLAKC6
GKMBAAAANB3zIgCoLsZoAAAAAE3HvAgAqosxGgAAAEDTMS8CgOpijAYAAADQ
dMyLAKC6GKMBAAAANB3zIgCoLsZoAAAAAE3HvAgAqosxGgAAAEDTMS8CgOpi
jAYAAADQdMyLAKC6GKMBAAAANB3zIgCoLsZoAAAAAE3HvAgAqosxGgAAAEDT
MS8CgOpijAYAAADQdMyLAKC6GKMBAAAANB3zIgCoLsZoAAAAAE3HvAgAqosx
GgAAAEDTMS8CgOpijAYAAADQdMyLAKC6GKMBAAAANB3zIgCoLsZoAAAAAE3H
vAgAqosxGgAAAEDTMS8CgOpijAYAAADQdMyLAKC6GKMBAAAANB3zIgCoLsZo
AAAAAE3HvAgAqosxGgAAAEDTMS8CgOpijAYAAADQdMyLAKC6GKMBAAAANB3z
IgCoLsZoAAAAAE3HvAgAqosxGgAAAEDTMS8CgOpijAYAAADQdMyLAKC6GKMB
AAAANB3zIgCoLsZoAAAAAE3HvAgAqosxGgAAAEDTMS8CgOpijAYAAABg8uu/
szRoSqjzIt/7MqnwfXwBGI/vMYQxmnEaAAAA8M33d/ZJxvbzf+PV8L0vzIkA
uPA9hkwyLvjoLa+G731hnAYAAACqI/nu/NgPfkAEFMyJgDAwRocbjNMAAACA
G+ZFYQZzIiAMjNHhBuM0AAAA4IZ5UZjBnAgIA2N0uME4DQAAALhhXhRmMCcC
wsAYHW4wTgMAAABumBeFGcyJgDAwRocbjNMAAACAG+ZFYQZzIiAMjNHhBuM0
AAAA4IZ5UZjBnAgIA2N0uME4DQAAALhhXhRmMCcCwsAYHW4wTgMAAABumBeF
GcyJgDAwRocbjNMAAACAG+ZFYQZzIiAMjNHhBuM0AAAA4IZ5UZjBnAgIA2N0
uME4DQAAALhhXhRmMCcCwsAYHW4wTgMAAABumBeFGcyJgDAwRocbjNMAAACA
G+ZFYQZzIiAMjNHhBuM0AAAA4IZ5UZjBnAgIA2N0uME4DQAAALhhXhRmMCcC
wsAYHW4wTgMAAABumBeFGcyJgDAwRocbjNMAAACAG+ZFYQZzIiAMjNHhBuM0
AAAA4IZ5UZjBnAgIA2N0uME4DQAAALhhXhRmMCcCwsAYHW4wTgMAAABumBeF
GcyJgDAwRocbjNMAAACAG+ZFYQZzIiAMjNHhBuM0AAAA4IZ5UZjBnAgIA2N0
uME4DQAAALhhXhRmMCcCwsAYHW4wTgMAAABumBeFGcyJgDAwRocbjNMAAACA
G+ZFYQZzIiAMjNHhBuM0AAAA4IZ5UZjBnAgIA2N0uME4DQAAALhhXhRmMCcC
wsAYHW4wTgMAAABumBeFGcyJgDAwRocbjNMAAACAG+ZFYQZzIiAMjNHhBuM0
AAAA4IZ5UZjBnAgIA2N0uME4DQAAALhhXhRmMCcCwsAYHW4wTgMAAABumBeF
GcyJgDAwRocbjNMAAACAG+ZFYQZzIiAMjNHhBuM0AAAA4IZ5UZjBnAgIA2N0
uME4DQAAALhhXhRmMCcCwsAYHW4wTgMAAABumBeFGcyJgDAwRocbjNMAAACA
G+ZFYQZzIiAMjNHhBuM0AAAA4IZ5UZjBnAgIA2N0uME4DQAAALhhXhRmMCcC
wsAYHW4wTgMAAABumBeFGcyJgDAwRocbjNMAAACAG+ZFYQZzIiAMjNHhBuM0
AAAA4IZ5UZjBnAgIA2N0uME4DQAAALhhXhRmMCcCwsAYHW4wTgMAAABumBeF
GcyJgDAwRocbjNMAAACAG+ZFYQZzIiAMjNHhBuM0AAAA4IZ5UZjBnAgIA2N0
uME4DQAAALgpc170n7t/Nvg/3vd7qXHe1bcOLv6dLw3+3R/dNbj3/v/qfS6R
hOzLu67/3Kv7+Zk99zjd7xP/6c7M56yGPHfmRABsqpC7+uhnFjPHMhkvZ2/6
6nCs/Pbf/Xcv+6mO2S4hf3d8vq6M0wAAAICbMudFefM4EjL38Z3DkrnXWy7/
D+v2S55LGXMnuT1zIgA2Vchd5R3XZPyUMXPSOay8f29cx/WygnEaAAAAcDOp
3NXb528Z/rcaci7fNCeSeY9rnVORIfMsqYMaZ46jPh+pKZP/TouyzvszJwLC
ULXclfxbH8vlnIOMd/q4KeP+nX/6/05sP/XzAlmx566/8vq6Mk4DAAAAbiaV
u0qrL5KckdxWr3WSNYeTmkPIY6mPL/+Wedc4uSuf8yLmREAYqpa7ShsLpWZW
8lj6uYhJ1dKqj+vz9WKcBgAAAIpVhdxVEnJ+Xs8fTWLNidR46esW5XFd52tq
kLsCUKQ65a5sY2pZa6P1IHcFAAAAhKlKuSsJyV/peaSy5w/JfkqdlZpvIncF
wLc65q4kZD20OpZPYh04uSsAAAAgTFXLXen3k7DVXqlrU8bpuSvrBU19hcld
AfCtrrkr/X7SD8t0Gxl3k15ZUms7zlpxclcAAABAmKqYu5LeKC7n68tek0Lu
CoBvdc5d6WsHTX2vZJws6tp/5K4AAACAMFUxdyWhXrPKtm6Q3BVzIiB0dc5d
SU1V1nkIcleM0wAAAECWquau1PWAtvsWtWawyPmaeh/ZP/1a8jJPm0T/eeZE
QBjqnLuSyLpea1lrBvWxV/pv+TyfwDgNAAAAjK6quSv1vjL3qct8Tb1PWlz8
O18a9qVnTgQgTd1zV3o+v8z9dBl7JT+WXEvW52vKOA0AAAC4q0Puytf6j1Hm
a2otmEuUde0t5kRAGELKXZWxtlsNtcbLJYdV5vkDxmkAAACgOHXIXckcoy7z
NTmXL+tS9DlR8nNTbquMdSzMiYAwhJS7knrTMvdTesHLeKr3hJf/lrWIel2s
/G3xWX/FOA0AAAC4qUPuquxz9WXM19JC8loyZyrz+TEnAsIQUu6qjL6EeUO/
9qHPfWKcBgAAANxUNXcl5+dDzV3pr42E6drxzIkA1D13pebpq5C70p+Pr36K
jNMAAACAu6rmrrKuTTXp+U3R+6BfF77odYPMiYAw1Dl3JTn5stdHjxJV6KfI
OA0AAAC4q2LuStbUqfOKca6ZPk6UvdaF3BWALHXOXf27P7pr3ThXhWv7Sejn
DnztB+M0AAAA4KaKuSu1n7mvPu0SZeau9PwcuSsAJnXOXan1s2X3ac8Tek7N
134wTgMAAABuqpa70s+H++yPUmbuSu8XzJwIgEldc1f6uryqrBeUUM+P+Oqn
yDgNAAAAuKtS7krmNmpfXzln73ONSVm5K3lOaj2CzKOYEwEwqWPuSq9rqlLN
lV7zKucRfO0L4zQAAADgpgq5K5lLqOfBk7WC8vO07av3kbmS7/ma3F72Ke2a
gfKczrv61nXPs+hrDDInAsJRp9yV9CZUbysh413aOQj5XTImyng4an2W3Ff2
Le2xZP/U8yPyuD5fV8ZpAAAAwM2kclcyX5A5jR7qHCdP3kpCvc846z5kriP7
qodaGyXb13+v55z0665LHiu57Uc/s7guZ1X2OX/mREAYqpa7krFNH8dNY5tL
3kqiqHXi+uPKmJuMvzIWq+N5nr8zZQbjNAAAAOBmUrkr15A5hus6waJyV/r6
FtfQ51gyV3K9r8ytypw3MScCwlC13JVLJDVQLtsuKndly5+ZQtYwVuGah4zT
AAAAgJsy50WyPiNrDiFzIplHSP1R3rmEumZwnH5U+tzJNeT56duSfJTsizwv
/Ty/zK1kn033Y04EwKQKuausvHxSVzvK+KavGRxnfJT7yr7KvqhrA5O/NfI7
37VWjNMAAABAflWYFxHMiQCYMUaHG4zTAAAAgBvmRWEGcyIgDIzR4QbjNAAA
AOCGeVGYwZwICANjdLjBOA0AAAC4YV4UZjAnAsLAGB1uME4DAAAAbpgXhRnM
iYAwMEaHG4zTAAAAgBvmRWEGcyIgDIzR4QbjNAAAAOCGeVGYwZwICANjdLjB
OA0AAAC4YV4UZjAnAsLAGB1uME4DAAAAbpgXhRnMiYAwMEaHG4zTAAAAgBvm
RWEGcyIgDIzR4QbjNAAAAOCGeVGYwZwICANjdLjBOA0AAAC4YV4UZjAnAsLA
GB1uME4DAAAAbpgXhRnMiYAwMEaHG4zTAAAAgBvmRWEGcyIgDIzR4QbjNAAA
AOCGeVGYwZwICANjdLjBOA0AAAC4YV4UZjAnAsLAGB1uME4DAAAAbpgXhRnM
iYAwMEaHG4zTAAAAgBvmRWEGcyIgDIzR4QbjNAAAAOCGeVGYwZwICANjdLjB
OA0AAAC4YV4UZjAnAsLAGB1uME4DAAAAbpgXhRnMiYAwMEaHG4zTAAAAgBvm
RWEGcyIgDIzR4QbjNAAAAOCGeVGYwZwICANjdLjBOA0AAAC4YV4UZjAnAsLA
GB1uME4DAAAAbpgXhRnMiYAwMEaHG4zTAAAAgBvmRWEGcyIgDIzR4QbjNAAA
AOCGeVGYwZwICANjdLjBOA0AAAC4YV4UZjAnAsLAGB1uME4DAAAAbpgXhRnM
iYAwMEaHG4zTAAAAgBvmRWEGcyIgDIzR4QbjNAAAAOCGeVGYwZwICANjdLjB
OA0AAAC4YV4UZjAnAsLAGB1uME4DAAAAbpgXhRnMiYAwMEaHG4zTAAAAgBvm
RWEGcyIgDIzR4QbjNAAAAOCGeVGYwZwICANjdLjBOA0AAAC4YV4UZjAnAsLA
GB1uME4DABpmcxQnopC/ffs970vdLbTWXkeJHZ73BZgI5kVhBnMiIAyM0eEG
4zQAoGG2t87mW/j7N54HW2dfx12e9wWYCOZFYQZzIiAMjNHhBuM0ADSGmmcw
hdQgLUcx7WsHJ4TcVXHIXaFxmBeFGcyJgDAwRocbjNMA0BhpeStTHmuLn90s
Hbmr4pC7QuMwLwozmBMBYWCMDjcYpwGgMdR8jfQp2qXE7tZavkq9jfSECjF/
Re6qOOSu0DjMi8IM5kRAGBijww3GaQBoDDVfs91yG+m3faK1vv4qNOSuikPu
Co1T93nRP/z933vfhyoGcyIgDHUfownGaQCAU+5K7NRuG9r148hdFYfcFRqn
7vOi+ZmZwVUf/vDgq3v2DL77yCPe96cqwZwICEPdx2iCcRoA4Jy7EmrtVWg5
CXJXxSF3hcap+7zoE9dfPziv3R7GBdu3D//7rn37Bj/4/ve97xtzIgDjqvsY
TTBOAwBy5a7UnMSD2u+2KL9bdnjco62z/bM2G36/Q9le0l9rS7xtde2i6b5i
Ot5Hfa3jbst9bLmr7dpjnoj/27Xn1474MfXrOSbbcb1+o+yH9CNLXres56Pb
HN9f7V92It6vPNeQ3NRay0ep2zka78em+DbkrtA4dZ8X3fx7v/dq7kqNd73z
nYPf/93fHdz353/ufR+ZEwEYVd3HaIJxGgBQWO5qe8rvRnncXdrvp7X72O4r
OaWjltuqoedr9NyV5GGWc25DtdlxP5Ic1CbzZoYWMu6f1T9/t+M+ZOXjtrTW
5wJN+yG5OnJXaJzku3Nd49embzTmrtTYfsG7Br922fWDCz7+Be/7O+nwfXwB
GI/vMWSckDH3go/eMrhg5x8OLrj+i4Nfv+E27/tUxfB9jAEASjdq7mq39rsy
c1e7tNvL9vcb7qvnVuTf6rUT9Wsm2vZ/oN12Ob7/Qmtj7saW7zHts3oNR31f
Fizb0fuMLVu2YcsR6Xmv/cr9l7XnI7k2Ww4t7bXVX5eQ15YCRr6/s+eOG7vD
OZDMh86f/p3Br77n8szc1bo4/zcGv3bpxwa/+r4Pvxrb333pYPu73r8Wv/7u
wfboNhLnnbv97HrE6PG8P3fmREDj+B5DxokLPvJZ8zi8bdur42wy9v7qe+fX
xuSLrxr82vuvHZ5vkDh/bpc1hnmxJH7ry96fL+M0AMDCNXe1SbttWt1S0bkr
Ne+iro/b3Fqfa3lQu60pDyOPldRD2fZfzeXoualNrfX1VLb1kdPx7XZa9qPV
2piXMt1OfSzT6ySvgW3dn1qrdiLl/moOzJZD019bfZ3iptbGdZHkrgBPzn/7
299w7jnnvGP7tm2XRHOcG89ttz8X/e890f8+Ev3vU7nyVIaItnNb9L/35rxf
iNeoBYDSnTc1dTDXeLtt2+5onH4417g+NXWm3W6/2fdzBQDAwjV3pa47kzyI
nmcpO3eVVhOkP75EWg8o2c7OjPunrePT1y+OIys3pe7PONtOuy7k5tb656M/
7y3a79PWFup1XuSugIKdf/75r5H5RTSXuSCaa1wV/e9no+hG//62zG+i/z09
bm4qNaamDsg+RPE6+bfr/bZNTeXprQcAiEVj6A05xul75T5bt259Y/T34Nkc
Y/te388TAIAULrkrPY9kykeUnbvKWs+o5kxstUNp9NxVVu8n1zxZFrVWSc+n
6Y+TlrvTqb3ujzrcXu3tpee51Lxl1nur16WRuwJystRM3Ss1U1EcLyoHFW9r
/7B+amrqLx3Py5/etm3bW5N9nZqaepPjPh2TfJfP1xUA6krOFTjmofbLbZP7
xX9HnMb2888551d8PkcAADKouRG1N1TSx0jvN25bI1dm7sple+p+jnJu33ad
QZfHy8qrpcnqa66u50u7rqJOff303mRZt9f3I2/vdXq1AxbRnOK1UjO1vd1+
56s1U+32vrhm6khRNVPD7azVYMl2u/I48njyuPL4sh/6vp3n9tg3GO4n9V9n
Ms7nH4we+8LJvMoAEA45XyA1UQ5/H54y5Z+i++1x+JvxRR/PDQCAHPT+RGmR
lgPxnbvKU6Nlkjd3peZnXB5Pck5Sz7RLi6waJVMfrgWHx9SvCak/rh5p+aa8
eTpyV2gsmTdIzdS2rVsvG9ZMRfOB89b6Qu0vumYq7l11b1yXdaOcX5fHlrqt
vPst6/my5kXR7x+w3T/ah2uc9n1qakVua8qdAQDWSJ2q/B1x7VkVjc8nzz33
3LdZtvXarPXd8d+nGxmbAQAVlparkr5WkoeQtWxZ9T5Vyl3lWVuXKCt3peen
0sKW55Gcl359w2QtoK3GzNQ33TX0/cibFyR3hSDJd/pt27a9ZQI1UydNNVNS
3xTXTBW29k6ei0vPqmhe87T0Tknblsu5/XXzpOh5jZJnA4BQyZgYjY03nWe5
psbw78PGn53Zvm3bRWnbldot030tOawbWOMNAKigceuVEuSu1pN9UNf7jZO7
SrZny4OZ+sqPk7vS+12Ru0IjSM3UeVu3toc1U1u3flpqpqK4L66ZerqomimZ
k8Q1U/fENVM3DGumzj33bZPK5Uh9VvTYDxnmQC+Z1v/J/mW+ftFcZ5hv0+ZU
8ryG+TdD3Vm8tnGv5AQn8bwBoIricbJrOgcSj8n3yN8nWXtt+Jtyo9NjtNvX
Gbb9rJx7MdTIyvmYq8hhAQAqJMTcVRXWDKq9zyV2W243Sp5nR2tjbkp/jYrM
H5G7Qu2tq5mS9W1JzZTkb9a+o6f3a8pfM/VAXDN1c1IzJX3Nfc8DpG4rzsdt
zCG1238Q7d/r5XXR5jBd1+3HNQPqPOjuV38XvQfxa79iee3ul/ennGcOANUy
XBco67XXzmUYa6CiuEXvYSV/Y5TxOde1Ac9bW8Ouju83D887RGOzcV17NJ5z
jVgAQEWUkbtyua5d0bkrdU2dXjfkosjc1eaW++s6Tp5nWnsc9dqI6rUBXXq1
p8m6FmLa7cldYSJkPduwZir6jh3XTO0psWbq4bhm6ta4ZuqiSdZMjWJYU7a2
vnFdjm5YFxW9VurcKM5vnUnmLeo1q1xIjjBZm2LrvyK1A3qNljJXOsD5fgCh
Go7Hcl7D0gNRclnyt8zWe0r+7sTj97fzjpPx+YljSW5MfYxhX6y1a9uaclgH
XOpvAQAoUVG5qy0t99yPftsicldqndOC2y6vU2TuKk8eb9w8j7ouUd0PNa+1
f4TtqhaUbdmuM5mQtYtZ/eeBXCR3EtdMXRifG77l1Zqp6Dt4wTVTK3HN1N64
Zmo+qZny/TqMQuYpsi7R0ovrbslTme4Xr5c8I/nAUR53mM+L5lVZtxuuk1nL
qW1cJ7PWE+smeQ6j7AMAVIms1ZZx17Iu8PTwd9FtsrYjfxMlv5X3vEJCxvX4
76ZxrWHc2/3m4XrCjX839svfxFEeFwCAMRWVu9K3Zat9MvWBKiJ3peZqpAYr
q7e8Xv9cVu7qRMo2isjz2PZjU6u491av77K9tqb3ltwVMllrpqT+ptiaqWNx
zdTdUjMlvT9erZkKLD+SNveQ3JytHurV+6/1/vr0mPvg/JoOr8/Ybt9ier9l
TifHhC3PBgBVNVwrPTU1n7YucLhuT1sX6LDdsepSXa73OqzRWrtWyMa/I2vr
7S8YZx8AAMipyNyVWvskORm9f7hs33S9vCJyV5u0bZv6lyf7kORX9J+XtWbQ
1CdA7qP3XdfzPDvj29jygPo+689XXTd4ImU7iR2WfW1p+2p6bTe3zL3pyV01
XFwz9da4Zuq6uGbq7qRmqqi8VNxvVmqm7o9rpm6Ka6a217VmahRx35LrjH3R
Ze5U8blGvGblBmPv4LX3+b6qPwcAUPLxtnWBD8frAiu/NlrWw8e1uKZ6scxz
IQAAFKTI3JWeS5F8ieRPJH+xrP1czYUUkbsSOwyPvxBvS0LPraTte5asXu3q
OrvkOdj2w5bnUV+Do9pz0Xu1m3pameqgjrbOvie74n+r27LViZle22Q7C9rP
d6Y8JwRmWDM1NbV9WDO1li/aE+ePDljWG4xTM/WQXjMlebHQaqZGFb8HputF
Haxjn5LhtRcN10JM1q3UZd4HoDmkhvg86YdoWMseX1e1W9dczzAfZ89h3VfX
5wUAqI0ic1dCX1+mh+RJNrWycz+j5K6SxzfVdmXliYrOXZnyRnrI79PyPLY6
NT3S+nvpr3VWpPWzynpv5flsaa1/Lcld1ZjkhIY1U7KurvyaKcl13S+5L8mB
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
Z8Aczp67KueGzs7Cssq5tb26x/M55CE8H6OfXb1X6b7r5zh3la8FO1Jbzx2S
oQBEY+7q9nGbu4KXw9zVsfzaysX0d+n48zUPs2S/PIQxZpu7SpUyacTapGvV
0iem+baUqeVxr3+/NbfVc18sGQrADMxd3T7uvV4g7x+O7iNj7grmZO7q6ZXv
SbiOG89e9yAPYYwZ9rtK8z3lPPqZ81ctc1dHKn095f2RMhSAyEbt1X6vZ72P
qJq5K88ZhDjOnrsq57XPXCtwz6+j9/0s8hDmMMPc1Vrl3M5ZfWivuavy+5Gq
17MyZCgAM+jZZ+TPeen1PL0eZe4KXqaz567SWCvPn5n2O39Kjp697lYewhgz
zV2Vr091xhrQnnNXvZ5NK0MBmFHPPmPU9aB7V00fkO9dnK7vHXn//D7D9JxC
fQbM4ey5qzJ/ZtnrvKV6jtfkIcxptrmr8npAzz2hzspCc1cAvBQ9+4yyZzh7
/NKjDyi/xiPzcz/xs9/tfi+NPgPqzTB3la9XnWGvqNbK79U5O/vlIYwx29xV
qshzV6Pm5mQoADPo3Wfk5+w0lnkOa69q+4B8jLY3F1X2Gb3GpfoMqDfD3FV5
D0ivtZk9K+X82eNFeQjjzTZ3NcMegj3nrvK1/6lkKACR9e4zyr4h7Xt1ZL4m
vSaN2c7Y76V2zJXfA5jWVN16bb6moue+ofoMqDfD3FWqfKxTsz4z5dUMz8XI
c24vE0eUPIQxZpu7qunPelWvuavUJ+fr+HveYy5DAZjBiLFa3jus66/SWGxr
Ditdr8+fbVye5/Pnr6fX9LieXzt3Va4xSF/v1teW5uJGXf/TZ0C9Weauyudj
rXPd1zIjzfHn46Py3/Nr861zWymL0+e4lYkp9/J5q1Qz7DcvD2GMmeaufvE3
fnBo34q8R00fc+9jrp27Sq9Px3TrPoV0Llh74RH3NchQAGYwaqxWzl/l67DS
eTpVOVbbWm9QruN6yjWsdO5PH19WOQ9V/vteP7Ve30tzVenv0//m18Z67nOl
z4B2s8xdrfm0lYnp79bMzMcut9YWlOu4Wo4nz7h0DGmOKs/F8nP0XgcgD2E+
I+euUuZs9XApd8qe69YznY++bq/S3P3W8eTHsnXM5ZxTnqXpY/M+NPWTW7mv
pwTgJRg5VsvXU+1Vet3WPNE9567K9QFH69q6g3L+6trX1bvH0GdAm5nmrlKl
+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
zCtleeol1563tvdL/WXK3pTFeZ+Z3jNl54geWoYCMIPRfUY6Z48et9T0B/k4
ba2jvUnNWC1Vz7GpPgPq9c7DljmdlEtn5GEaK5Xz8UfHhFs5eqvS63t+LfIQ
xjhj7qrMqfT/z8jMrfq5X/nNJ/V+qWde5732MrTnuUKGAjCD0X3G1nk81Vnj
s7XSdatr66aOfHw+d5XeJ/URe6XPgLmMnLtKGZD+f15pvVU5Thk9t59yKX3O
rSxsmbtK68j2sjCtde35NclDGGN0T3ltLevZ6/nTnFPKvqdct0zvkfel6c/p
HLGeL8r3T/9fhgIQ2eg+I78XLx8fHb0X5d61NU4r+4Ej75PPXfVeQ6DPgD5G
zl3dmgdK45NRazTzKufw05/zubSWuasZ7n2UhzDG6J4y79/ya6MpQ8/Km3J9
bdlTHs3E/OPSn7eud6beOX/vXtcBZCgAMxjZZ+TXx1KPkZ9ze14vulX5uCz9
OR1jef/fkfcxdwXP3yxzV2U2pbzsnRnlGCiN/cr7qM1dAbeM7ClTPuU9ZNqf
7+z1/Pl1hzT3v2Zm7dxVnsfpfW59LfnnPLpHqwwF4Dka2Wfk59e0FjrvO1Kl
vmN0n5GPDdfewNwVvEwzzV3lawhGZMp6bGnsk4+tzF0BR43sKfP5nXW9Ub5W
6Yz1/Gv2pf/Ne9rauav869hbS1XO2fV4DpAMBWAGo/qMfJ4qvy6Ur/c+Oi7K
9wBI7/WUOa+t53mZu4KXaaa5q3JvrFsZVpuhW5XWnKaPL6/vm7sCjho5d5XP
76x9YJrnqe3FUuat7/XUZ1+njNyaM6uZu2q5rpt/L3o8Z1GGAjCDUX1Gfn0s
v/8l//uja53LvQTuPTYydwUv00xzV/mc1K29W/Ks6pE95q6Ao0b1lPlao3zP
iXIN0pF5n7Ln6zH3U9Ozls/+OfL++fmix/M9ZCgAMxjVZ+RjmXw9c3l96cha
Z3NX+gzoYZa5q5SL+Z7pt9YBmLuShzCLUT1lnqXlPXU199ulmm3u6uia26d+
jAwF4LkZ0Wfk18G2riHl9w0eeTbMPe8ZPNLH1H5MOqb8uffrGvIeexDoM+B+
Zpi7Kp99ujcOudc9g9fqqXNX+TPd10p5OXIfZXkIY4yau8qfZVH2Vvl9g0fW
89/znsFrNXLuqsezj2QoADMY0WfkfcTW3FT5PJXePc9ePXXu6lat81q9vwZ9
BtQbOXeVxiTlnE7Kx3y9VXrNGc/Kyuupc1e3Ks3RjZjTl4cwxoieMmXGrbmp
EXuX11bN3FX+nI6j9//lz/E+2rfKUACemxF9Rn59bOt6VnnfYI9rXjXVMndV
9kp7la6L9RyT6jOg3si5qyOV5v2f49xVvhbsSPV+Hpg8hDFG9JR5vuT7p+aV
3zd47TUjq2buqiVzW/pWGQrAc9O7z8ivj91aU5XfI9Njn8maau0B0te6dS9M
+vs0Nsvn8GrWguszYIzZ5q7W3Dxz3UDLOCplYMrC8rjXv9+a2+q5L5Y8hDFG
zF3la1OvZWO+3n+G9fzmrgDg6Xr3Gfna51t7WeX3DaY6c61Bzx6gHLP1Gq/p
M6DeDPtdpbFY+rd8fHbm/FXLOOpI5fsWmsuHGHpnaH5v3K29rMq18Gev56/p
+/I+8WgumrsC4CXo3WccfVZWed9g73tIzuoByueHHdmbXp8BY8wwd7VWObdz
1nrUXnNX5fcj1b2fuyEPYazeGZqv0d+7FzC/b7BXr3W0auauPGcQALb17DPK
vSPLfYnLyu+p6/GclKPV+/pVPhbstdZAnwH1Zpq7Kl9/1nrUnnNXZdZahwrP
W88MLa9xbj3DNK/ymRFnruc3dwUAT9ezz6jdr7esXtfg96r33FXvHkOfAW1m
m7vK9wvsObdzq3rOXaUydwVx9MzQcm+J2jpzPX9NzrU8e/vI/vUyFIDnrlef
UV4fa6ke46Qj1XvuKl/zbu4K5jHb3FWqyHNXo+bm5CGM0TND83sAW6rnnnr3
zPEyF49cx83vW+gxRydDAZhBrz6j5bpRqnxe59Y+nD2r99xV3mP0mp/TZ0C9
2eauyiw6Y7/2nnNX5TqKXl+DPIQxemVouff60SzMnzd45nr+2jn6fK/Dvbmo
cq6rx72RMhSAGfTqM/LxTs0emeUeWWeM1XrOXY3qo/QZUG+2uav8PpCz5vJ7
zV2l8VU+j99zL2V5CGP0ytA8O2uysLwHIPVgZ+Ro7dxVTfbn13x7PdNDhgIw
gx59Ruv1sbX2nsOXP38rndPvfY2pdu4qvT4dx961sXLf5R57EugzoN1Mc1fl
PPe11+djnB7jstq5q/T6dEy35uVThuf3/6Q877keQh7CGL0yNJ/nrs25vfX8
qYdc8yhlUY97l2vnrso+OmXqVq+b+sgR13tlKAAz6NFn5GOulrUC+bl4637D
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
AAAAAAAAAAAAAAAAAAAAAAAAAAAAABN791U9PNYHJx8LwJnkIUC7L72qzy5L
hn5y8rEAAGN861W9/6re6/x50udYx2ofd/5cAC3kIUC7URn69uXHGfrQ+XMB
8Lp03eDhRn36qj66LOeFN046xt5SD59/zel78uUnvN8bG+/50ROPMZL0vc2/
Nz17DWM1aqS1KLfyMF1vTT9H6Wf2SycdY2/ycCx5SCQyVIaONjJDzV0BnOtW
j7HVc7x7zmF2tfW1PqWvz8cHo85x+Trm2cck5bn//Y6fy1iNGuX4YK96/uye
JUIeJut1mZSLM193kYdEIkNl6GgjM9TcFcC58gz+8LJkfl5b67LePuVI+ynn
59Y/t1wneyN7j/y9ep/jntP5NH2P0nq+9Xv0lOuRe4zVqJGPu9Kfyzz86PJ6
HkYbe0XIw0vxuWY+Z8lDIpGhMnS0kRn6nHptgIiOnJvS3+fnzE/HHNow5fxd
/uda38o+vlw735Pz6TZjNWrk465r46m0xrGc049070uEPLwUn2vmcddI8pDe
ZKgMjUyvDXCuo+emb1W89rnJv678vvmWddJ5P/aly7hznPPpNmM1ahwZdyXl
73akdQMR8vBSfK5I56unkIf0JkNlaGR6bYBz1ZybXkKfkeS9wrcq3ic/p63j
AnNX5zJWo8bRcVf52kg/WxHysPxcxl0LeUhvMlSGRqbXBjhXzbnpaE+S9nP/
4PL6np3pmtP6zMIt+fWpT3aOJX/tXs+T72P+2ca/l+ehfI3Z3nHk8rXh6572
R85xbzx+zg8vr6+j//Tx76/9tyn3P7hWt55J86WNz70+C+hIn7V+XP453r98
cf+B8ucl3wP02r0CT/m+5McRsTemj5px19GfrS8/vja9pvx9XZ+3de1afJ5b
e/fU5K/du7af/z6Ve4M85zzc2ktnq7bOAyt5CO1kqAydNUOT1vHJytwVwLny
DN7re/OeYasnSeeLTy/HznvpPFP2Bm8Ur7m132L53JVb56q8b9iawynPQzXH
scrXcuf7ge2d49J59Oj8U7lXQvlc4Ft1rS/ce571+t/q1vcg/xxvXLb39y8/
/97P3VO+LzljNWrUjLvyHv/az9bRZ25d2182/1269dzvsp++1X/nWXVkLv+5
5OGl4mOvfX55CE8jQ2XojBn61PHJytwVwLn28n5V3me/dd4p55PKZ8yU55+t
82bey9zqM8p+5lafkV+72nrPrfNQ7f6a+dee92t757j861iv+6zfr9QDlOfa
8ut87/G1HxavK5/t8+7ldeXHfJK9/qPL6/vzXzuX5/+9Py4+Zr1OWttnPPX7
sjJWo0bNuCv/GdzKlbLHTb9fH1yuP29r6xkY72X/fmvtZJm9tzKrdi7/cnk+
efhu9vry+5Hn4dZ/L3kITydDZeiMGXqP8cnlYu4K4Gx7eZ+U1z2urXlO58B0
brm1fjvvIx42Xpf/+63e+qGoWz1Jfr7cWp+1dR7Kz09H1o/n/UD+OfbOcen8
uLeOOu/Prn3va8+nee/12eX6dar8v/u1c3n532KrD721pn7rc9/r+2KsRo2j
4668R792j8J6r/IHV/49KddOlnPM5b8fOe71mK7Jf2+2fr8i5GH5ufbWFMtD
uA8ZKkNnzNB7jE8uF3NXAGe7lffrPfPlPetH1jvfkp+Ty89Zru86cu641Wcc
2UPr2nkoP85bfcCta3D3OMcdebZM7fk0/9q21mRd+9xb/z32eowtNT3R0WPb
YqxGjb1xV/pdKa/11+y9uyUfw219ziO/q1u9/rWczufy936frx3H7HlYfq69
jJGHcB8yVIY+1wxNbo1PLhdzVwBn2zpfX6u9e9SPynubrXNSPle2dQ7M76fP
32tvnfC1a4DXzkP5NZhb16ZuHcO9znF7/VTN+fTd7HVba+xLeZ+59d8j/7xH
x0P36jP2vi/GatQ4urdKqjR+udWjH5X/jG6tH83z7oONf89/n/fGjVvPrSpF
yMPyNbcyRh7C/chQGbpn5gzdG5+YuwI419EeY2/fghp7vUHeZ2ytKV7nttL/
5tentt4r/1xHzs+5I/trXttPc++9a+2dl2vOp3mft9XH3Xr91ve4pWfoMVbb
m7s0VmPP0XFX6r337vk4au9ndG9ckOfl3vNX88917Vp2hDw8+ppEHsL9yFAZ
umfmDK2Zu3zqfwMA6uUZnO/FmP6cr4tOf65d153Owfm+j2vla3K3zg1571Ce
u/Nz/7oHwvr/y+tY+WtvXQu6dR7Krw9tzaO17AN/S/ra0/e5/J7tnZdrzqf5
ubncr3Kr9s7lI/qM1u+LsRo1rv1ubO1xe6RHz6U8evty+/fr2s/orT378rn8
S3Gc5dgwX9N6bf+YCHlYfq5bGSMP4X5kqAx9DhnaOj4xdwVwrlt5n87ZR/bT
LJX5f6uurefKPz6/NpVfP1vXGue9xBtXXnurR7p1Hsrfo9xf841L+74HufX7
fPTZxPecu6qtkX3GPb4vxmrU2Oupy71cj9zvkl6z9Yzvrbr2M3ptPFPO5V8u
X1xD8O6V1x7dn3fra3kOeVh+rqPjLnkITyNDZeisGXq5PH18Yu4K4FxH8j7v
GW71u+XzCFvPDcm1PiPvKVZ5P56vDcvf41Z/tHceura/Zt6DbV0/O/LeaV7u
aH9x67/TqLmrvb0J7tVn3Ov7YqxGjSPPyMozaO95UXkGHalrP6PX9u7Nx0Hr
z3+eBR9eeY/WufzkOeRh+bl6jbvkIXyRDJWhM2bovcYn5q4AznXkHFFm9bV9
o8pnx3xw5T2P9Dbl3pmrTzb+Lr/HMD/fr/3BrWcdXy7756G838+vte09j2Tv
vd8o3iMd53uX7e/v3n+n1rmra9//GvfuM+75fTFWo8aR343y2vi1PU/K9QUp
H9+9vD5OO/IzWu6Tstqay79kx5ffK52PAW89cyNCHh59TSIP4X5kqAx9qntn
aHKv8Ym5K4BzHT1H5Ncrtq4Hlc+9vcd5Ln+/Ny5f7D3Kj1v7jHWe6tp81t7n
2VJ+bem98/NX69rx/Bre3rXHve9tzfl075k7te7dZ9zz+2KsRo2j2ZT/Dl3b
S29v34zV0Z/R/NjK+6XLj8v79HXcsjUW2xIhD4++JpGHcD8yVIY+1b0z9J7j
E3NXAOc6muffKl5bnhPzPN87rx/tbcrn6ObHUF5HKq+H5dfr9vaYP3IeKvfX
zP//rfe/9d55v1Uzv/bUuav8+3irRzrq3n3GPb8vxmrUOJpNZS+8d9/DrX0C
j/6M5plWPqeiXLfwreLf7jmXn8yeh0dfc7nIQ7gnGSpDn+reGXrP8Ym5K4Bz
HT1H7K3xzvP81j165ZrmW71Nfj788PLj+amt9y/7jLwP2HsO85HzUHk9K//z
0WtbpbzP+Gjj31d5z3Ttv1P5mlvKtfNHe4Nreo7Vnvp9MVajRs29D/lrt35O
85/NW/eX5Fl162e0fHb6rbn8/LXp/fMx297eyBHy8FIc1965TR7CfchQGTpb
ht5zfGLuCuBcNeeIfG1Tee2ivIa2dd3o7cvrz/e41dvk58NPs4/dOifnr93r
h0pHz0Nb+18+5fpb2bts9WbvbXzeI9fI9taalXul7vVi67q3vc/b4x6Zp3xf
jNWoUTPuKteilusC8qy7dp91ucft3s9o+dyMW714zWtzUfIw/97uHZc8hPuQ
oTJ0tgy95/jE3BXAuWrOEeW1mvLcVD4PJp333n+sa8/32Otttj7u2r6eNa/N
HT0PfXB5/f1vXQs88t7luTJ9D99//Fzlv+39d8qvPX72+B7r977s57aeufJp
9jHrMXxcvOfe13ivfTXv9X0xVqNG7Z6z+Rig3OejHJd9evnx71a5b+zRn9Gt
DLo2P1/z2lyUPCz3eV7fa/3e5+Qh3IcMlaEzZui9xifmrgDOVXuOyDO+PIcf
eQZt+vf8fLjX25TnzlTX9j14v+K1uaPnofLazZHef++9jzzPOH2f8x7n2n+n
W++1daxvXOqebXytZ+vRZ9zr+2KsRo3acVd5rbm093z39fr00Z/R8vpBqmvX
rsse+9Zrc1HycO98tPV6eQhPI0Nl6IwZeq/xibkrgHOt12HSue7IPE/eI1zb
8zBl/9Y67vWcn/cOe33Aly5fPA/v7WWQv/bI9bFL9jF7ezheLq/vH3+P907n
1NRH5OfVzx4/13oOfi/7+1vX5dK/fXh5/Xt26/z/9uPHlOf1zx4/Nh3bra/1
k0vdz9DRj7nH9yX/eb3H82+ILR8nHfn9zjPn1s/gR5cv/k6mn+nUF6/7mqz/
tndfxuXyxd+HTy+3f+fK1+7t/ZcfS4Q8XN8rX2+wjk+ukYfQTobK0Fkz9HJ5
+vgk/3m9x770AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQ
y3uv6uFVfXb2gQCc7MuXJQ8fHv8MwHEyFADo5f3Lj/sMgJfs7cuP8/Dtk48F
4LmRoQBALx9elh7j07MPBOBk37r8eNz1pZOPBeC5kaEAQC8fX5Ye4+OzDwTg
ZNahArSToQDAvaTrYGmPq3XOKq9PXtUHl+N7FLx7WdZtfZq9R9o366PLcu2t
xhuPH/Px43us7/fp4/u9W/l+AHvW3EkZk+fOmj0p345mT8rNlJ+fFO+TMu29
x89V493H4yrz9ePHY659P4B7k6EAQA/p3F/2Ftfq/Rvvk/qBT698XDkXdmQe
7MsH3y/1G3oN4B7SXixHcmdvXeqXL9vXAspK2XtkDPfGwff79GIvZOA8MhQA
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
AADh/UdBD7ey
     "], {{0, 931.}, {1199., 0}}, {0, 255},
     ColorFunction->RGBColor],
    BoxForm`ImageTag["Byte", ColorSpace -> "RGB", Interleaving -> True],
    Selectable->False],
   DefaultBaseStyle->"ImageGraphics",
   ImageSizeRaw->{1199., 931.},
   PlotRange->{{0, 1199.}, {0, 931.}}]], "Input",
  FontWeight->"Plain",
  FontSlant->"Plain",ExpressionUUID->"b755c31d-78f3-434b-8f5a-9f0f2682aa80"],
 "\[LineSeparator]\nThe example is based on the book \
\[OpenCurlyDoubleQuote]The Haystack Syndrome\[CloseCurlyDoubleQuote] by \
Eliyahu M. Goldratt, North River Press Inc., 1990."
}], "Abstract",
 TaggingRules->{
  "ResourceType" -> "ComputationalEssay", "ResourceCreateNotebook" -> True, 
   "TemplateVersion" -> Inherited, "CreationTimestamp" -> 
   3.7969911826588504`17.332014577785912*^9, "UpdatedTimestamp" -> 
   3.7969911826588504`17.332014577785912*^9, "CompatibilityTest" -> 
   HoldComplete[
     BinaryDeserialize[
      ByteArray[{56, 67, 58, 120, 156, 133, 143, 205, 78, 131, 64, 20, 133, 
       163, 173, 110, 116, 213, 165, 79, 224, 6, 70, 11, 105, 138, 59, 197, 
       198, 184, 193, 70, 92, 184, 100, 24, 238, 164, 83, 7, 46, 153, 123, 41,
        229, 237, 29, 140, 186, 193, 196, 245, 249, 249, 206, 209, 115, 90, 
       164, 88, 183, 216, 53, 213, 230, 216, 58, 32, 50, 216, 232, 19, 58, 
       203, 0, 42, 202, 175, 95, 129, 176, 115, 10, 242, 129, 24, 234, 212, 
       26, 104, 184, 120, 4, 109, 26, 195, 222, 153, 33, 67, 137, 248, 81, 
       232, 83, 154, 229, 192, 62, 25, 252, 25, 217, 58, 115, 144, 12, 133, 
       69, 89, 253, 24, 222, 134, 22, 124, 238, 242, 222, 50, 184, 70, 178, 
       57, 0, 229, 87, 227, 156, 142, 229, 216, 46, 237, 134, 72, 14, 191, 
       133, 139, 169, 70, 243, 172, 179, 214, 99, 207, 159, 253, 11, 55, 14, 
       184, 72, 45, 118, 213, 75, 185, 7, 197, 249, 251, 142, 185, 165, 59, 
       33, 250, 190, 15, 123, 180, 218, 201, 90, 141, 122, 168, 176, 22, 88, 
       238, 133, 251, 110, 167, 175, 185, 98, 138, 72, 177, 97, 127, 65, 248, 
       215, 217, 195, 86, 178, 218, 133, 253, 81, 123, 208, 236, 9, 38, 188, 
       205, 191, 188, 106, 149, 68, 55, 75, 121, 27, 64, 164, 203, 32, 6, 41, 
       131, 36, 134, 117, 160, 228, 58, 74, 226, 74, 173, 202, 104, 249, 9, 
       89, 192, 149, 140}]]], "ToolsOpen" -> True, "StatusMessage" -> "", 
   "AttachedMoreInfoTag" -> "Abstract", "AttachedMoreInfoCell" -> 
   CellObject[252961]},
 CellChangeTimes->{{3.797238839126877*^9, 3.797238892385397*^9}, 
   3.797238943560548*^9, 3.7972390331955523`*^9, {3.797239151253126*^9, 
   3.7972391966476765`*^9}, {3.797240732751102*^9, 3.797240752049101*^9}, 
   3.797327124657113*^9, {3.797328859361111*^9, 3.797328963674609*^9}, {
   3.797500081249281*^9, 3.7975000852961545`*^9}, {3.797500169581516*^9, 
   3.797500204249505*^9}},
 CellTags->{"Abstract", "TemplateCell"},
 CellID->306388670,ExpressionUUID->"f8c2e1c6-7e13-477e-9db2-c9e64dea2538"],

Cell[BoxData[
 RowBox[{"Clear", "[", "\"\<Global`*\>\"", "]"}]], "Input",
 CellChangeTimes->{{3.797326781127885*^9, 3.7973268374641137`*^9}},
 CellLabel->"In[1]:=",ExpressionUUID->"7be314a8-658f-46f7-83d9-0212126a6762"],

Cell[CellGroupData[{

Cell["Variables", "Section",
 CellChangeTimes->{{3.7972414926583557`*^9, 
  3.7972414954523664`*^9}},ExpressionUUID->"14e05961-06f7-481d-88c9-\
50d053d94579"],

Cell["\<\
Xp is the amount produced and sold of product P, and Xq is the amount \
produced and sold of product Q.\
\>", "Text",
 CellChangeTimes->{
  3.7972445339871902`*^9},ExpressionUUID->"bf4125ec-e5a6-4171-ba81-\
6e032678a017"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"var", "=", 
    RowBox[{"{", 
     RowBox[{"Xp", ",", "Xq"}], "}"}]}], ";"}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.7972444760610523`*^9, 3.7972445038750534`*^9}},
 CellLabel->"In[2]:=",ExpressionUUID->"4dca7a8c-b50f-4fd6-b1a7-ed2080ed20b1"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Parameter", "Section",
 CellChangeTimes->{{3.79724455795319*^9, 
  3.797244559812191*^9}},ExpressionUUID->"2581e9e4-5499-4037-94b4-\
0fc9ee23d258"],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Sales Price [$]", "Subsection"]], "Subsection",
 CellChangeTimes->{{3.7972408893011017`*^9, 3.7972408926281013`*^9}, {
  3.7972410440648327`*^9, 3.797241054503828*^9}, {3.797243809551233*^9, 
  3.797243817637232*^9}},
 CellTags->"ExampleTopicSentence",
 CellID->441483709,ExpressionUUID->"0a18e66f-20a3-4f63-bcd7-17382c7209da"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"priceP", "=", "90"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"priceQ", "=", "100"}], ";"}]}], "Input",
 CellChangeTimes->{{3.7972409053221016`*^9, 3.797240943684101*^9}},
 CellLabel->"In[3]:=",
 CellID->56094298,ExpressionUUID->"ccec5f64-deb4-44ca-a103-6bacd10c0e82"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Raw Material [$]", "Subsection",
 TaggingRules->{
  "ResourceType" -> "ComputationalEssay", "ResourceCreateNotebook" -> True, 
   "TemplateVersion" -> Inherited, "CreationTimestamp" -> 
   3.7969911826588504`17.332014577785912*^9, "UpdatedTimestamp" -> 
   3.7969911826588504`17.332014577785912*^9, "CompatibilityTest" -> 
   HoldComplete[
     BinaryDeserialize[
      ByteArray[{56, 67, 58, 120, 156, 133, 143, 205, 78, 131, 64, 20, 133, 
       163, 173, 110, 116, 213, 165, 79, 224, 6, 70, 11, 105, 138, 59, 197, 
       198, 184, 193, 70, 92, 184, 100, 24, 238, 164, 83, 7, 46, 153, 123, 41,
        229, 237, 29, 140, 186, 193, 196, 245, 249, 249, 206, 209, 115, 90, 
       164, 88, 183, 216, 53, 213, 230, 216, 58, 32, 50, 216, 232, 19, 58, 
       203, 0, 42, 202, 175, 95, 129, 176, 115, 10, 242, 129, 24, 234, 212, 
       26, 104, 184, 120, 4, 109, 26, 195, 222, 153, 33, 67, 137, 248, 81, 
       232, 83, 154, 229, 192, 62, 25, 252, 25, 217, 58, 115, 144, 12, 133, 
       69, 89, 253, 24, 222, 134, 22, 124, 238, 242, 222, 50, 184, 70, 178, 
       57, 0, 229, 87, 227, 156, 142, 229, 216, 46, 237, 134, 72, 14, 191, 
       133, 139, 169, 70, 243, 172, 179, 214, 99, 207, 159, 253, 11, 55, 14, 
       184, 72, 45, 118, 213, 75, 185, 7, 197, 249, 251, 142, 185, 165, 59, 
       33, 250, 190, 15, 123, 180, 218, 201, 90, 141, 122, 168, 176, 22, 88, 
       238, 133, 251, 110, 167, 175, 185, 98, 138, 72, 177, 97, 127, 65, 248, 
       215, 217, 195, 86, 178, 218, 133, 253, 81, 123, 208, 236, 9, 38, 188, 
       205, 191, 188, 106, 149, 68, 55, 75, 121, 27, 64, 164, 203, 32, 6, 41, 
       131, 36, 134, 117, 160, 228, 58, 74, 226, 74, 173, 202, 104, 249, 9, 
       89, 192, 149, 140}]]], "ToolsOpen" -> True, "StatusMessage" -> "", 
   "AttachedMoreInfoTag" -> "CodeTextInfoButton", "AttachedMoreInfoCell" -> 
   CellObject[268993]},
 CellChangeTimes->{{3.797240969146101*^9, 3.797240983863101*^9}, 
   3.7972413185702915`*^9, {3.797243820836275*^9, 3.797243824783274*^9}},
 CellTags->"ExampleCodeText",
 CellID->437581247,ExpressionUUID->"380628a0-6d0d-4540-afd9-fe1ce95eebe3"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"rmP", "=", 
   RowBox[{
    RowBox[{"2", "*", "20"}], "+", "5"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rmQ", "=", 
   RowBox[{"2", "*", "20"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.797240995141828*^9, 3.7972410191088285`*^9}, {
  3.7972413373392744`*^9, 3.7972413474452753`*^9}},
 CellLabel->"In[5]:=",
 CellID->57065598,ExpressionUUID->"3578914a-eb02-4452-afea-6da9771014e6"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Operational Expenditures [$]", "Subsection",
 CellChangeTimes->{{3.7972410872828283`*^9, 3.7972410968378296`*^9}, {
  3.7972438276042757`*^9, 3.797243832650275*^9}},
 CellID->26316050,ExpressionUUID->"b41b0798-6df5-4bb7-ad4e-7ed7a2e3e791"],

Cell[BoxData[
 RowBox[{
  RowBox[{"oe", "=", "6000"}], ";"}]], "Input",
 CellChangeTimes->{{3.79724110691883*^9, 3.7972411127078285`*^9}},
 CellLabel->"In[7]:=",
 CellID->463689764,ExpressionUUID->"709985e9-7c9d-4ad5-9428-86a1dfbe1370"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Available time per resource [minutes / week]", "Subsection",
 CellChangeTimes->{{3.7972436527276564`*^9, 3.7972436612326565`*^9}, {
  3.7972437267852316`*^9, 3.7972437905722313`*^9}, {3.797243836741274*^9, 
  3.797243845342275*^9}},ExpressionUUID->"cad2df9c-9c60-4b26-b2a3-\
7958097e0751"],

Cell[BoxData[
 RowBox[{
  RowBox[{"avtime", "=", "2400"}], ";"}]], "Input",
 CellChangeTimes->{{3.797243799614233*^9, 3.7972438058662324`*^9}, 
   3.797244567721192*^9},
 CellLabel->"In[8]:=",ExpressionUUID->"f2f795c1-e910-418b-8b20-b57d60295f47"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Objective  ", "Section",
 CellChangeTimes->{{3.79724114401683*^9, 3.7972411467098293`*^9}, {
  3.797243860684275*^9, 3.797243866855275*^9}},
 CellID->5213286,ExpressionUUID->"4fbdd049-aee6-49bd-9a34-654c193450b6"],

Cell["\<\
The objective is to maximize the NP (net profit) [$] under given \
circumstances.\
\>", "Text",
 CellChangeTimes->{{3.7972438755392747`*^9, 3.7972439074782743`*^9}, {
  3.7972439482142754`*^9, 3.7972439519832735`*^9}, {3.797326656096661*^9, 
  3.7973266801747866`*^9}},ExpressionUUID->"47eaccb1-0e07-4d81-9568-\
27b2f3f3ede8"],

Cell[BoxData[
 RowBox[{
  RowBox[{"np", "=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Xp", "*", 
       RowBox[{"(", 
        RowBox[{"priceP", "-", "rmP"}], ")"}]}], "+", 
      RowBox[{"Xq", "*", 
       RowBox[{"(", 
        RowBox[{"priceQ", "-", "rmQ"}], ")"}]}]}], ")"}], "-", "oe"}]}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7972411694598446`*^9, 3.7972412409832754`*^9}, {
  3.797241571660656*^9, 3.797241573056657*^9}, {3.7972450514926534`*^9, 
  3.797245052462654*^9}, {3.797326685909115*^9, 3.797326686265503*^9}, {
  3.7973268807297387`*^9, 3.797326881823489*^9}, {3.7973304529702473`*^9, 
  3.7973304533764973`*^9}},
 CellLabel->"In[9]:=",
 CellID->446964919,ExpressionUUID->"7e964671-07c7-4661-ba55-e6d662567dac"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Constraints", "Section",
 CellChangeTimes->{{3.7972412610402756`*^9, 3.7972412634582734`*^9}},
 CellID->923983861,ExpressionUUID->"dea63eaa-b87e-4707-a91f-70c14579bb44"],

Cell[TextData[{
 "The constraints in this section are mathematical constraints at first. \
Especially physical constraints as known from the ",
 StyleBox["TOC-Theory of Constraints",
  FontWeight->"Bold"],
 " are often ",
 StyleBox["Resource Constraints",
  FontWeight->"Bold"],
 ". "
}], "Text",
 CellChangeTimes->{{3.797325107934786*^9, 3.7973252063689723`*^9}, {
  3.797326176397769*^9, 3.797326288849422*^9}, {3.797326320161871*^9, 
  3.797326348553048*^9}},ExpressionUUID->"4d081e09-5222-4b64-a0b8-\
1d9aff9c122e"],

Cell[CellGroupData[{

Cell["Demand Constraints", "Subsection",
 CellChangeTimes->{{3.797241278308276*^9, 3.797241293147275*^9}},
 CellID->746848811,ExpressionUUID->"e1755dad-f37f-4e10-85c1-7e60fe1671c5"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"dc1", "=", 
   RowBox[{"Xp", "\[LessEqual]", "100"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"dc2", "=", 
   RowBox[{"Xq", "\[LessEqual]", "50"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.7972446108131895`*^9, 3.7972446736541924`*^9}},
 CellLabel->"In[10]:=",ExpressionUUID->"14035ab0-9f37-4cbc-b0c0-094fae41b631"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Non-Negativity Constraints", "Subsection",
 CellChangeTimes->{3.7972447069270134`*^9, 
  3.7972448013590207`*^9},ExpressionUUID->"25afabd1-7017-48da-9b2a-\
d90dc3ab6f02"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"nnc1", "=", " ", 
   RowBox[{"Xp", " ", "\[GreaterEqual]", "0"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"nnc2", "=", 
   RowBox[{"Xq", "\[GreaterEqual]", "0"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.797244718449066*^9, 3.797244759502013*^9}},
 CellLabel->"In[12]:=",ExpressionUUID->"54a4245e-2f33-4e9f-8dfa-31548e1b040f"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Resource Constraints", "Subsection",
 CellChangeTimes->{{3.7972447780470123`*^9, 
  3.7972448040450125`*^9}},ExpressionUUID->"1f0285d2-ce99-48fb-baa2-\
1a9f9d603dd9"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"rescA", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"15", "*", "Xp"}], "+", 
     RowBox[{"10", "*", "Xq"}]}], " ", "\[LessEqual]", "avtime"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rescB", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"15", "*", "Xp"}], "+", 
     RowBox[{"30", "*", "Xq"}]}], " ", "\[LessEqual]", "avtime"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rescC", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"15", "*", "Xp"}], "+", 
     RowBox[{"5", "*", "Xq"}]}], " ", "\[LessEqual]", "avtime"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rescD", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"15", "*", "Xp"}], "+", 
     RowBox[{"5", "*", "Xq"}]}], " ", "\[LessEqual]", "avtime"}]}], 
  ";"}]}], "Input",
 CellChangeTimes->{{3.7972448166740146`*^9, 3.7972449654186535`*^9}, {
  3.7973294162059107`*^9, 3.79732941648711*^9}, {3.7973296649156647`*^9, 
  3.7973296875719123`*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"f1b99ea4-3ecd-4509-9043-877344fafb51"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Do we have a TOC constraint?", "Subsection",
 CellChangeTimes->{{3.7973305433481627`*^9, 
  3.7973305565426264`*^9}},ExpressionUUID->"81e6f617-99bc-4ea8-920d-\
567fb99b8408"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"If", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"15", "*", "100"}], "+", 
      RowBox[{"10", "*", "50"}]}], ")"}], ">", "avtime"}], ",", 
   RowBox[{"Text", "[", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<Resource A is a Constraint!\>\"", ",", "Red", ",", "12"}], 
     "]"}], "]"}], ",", 
   RowBox[{"Text", "[", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Resource A is not a Constraint!\>\"", ",", "Blue", ",", "12"}], 
     "]"}], "]"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"If", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"15", "*", "100"}], "+", 
      RowBox[{"30", "*", "50"}]}], ")"}], ">", "avtime"}], ",", 
   RowBox[{"Text", "[", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<Resource B is a Constraint!\>\"", ",", "Red", ",", "12"}], 
     "]"}], "]"}], ",", 
   RowBox[{"Text", "[", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Resource B is not a Constraint!\>\"", ",", "Blue", ",", "12"}], 
     "]"}], "]"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"If", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"15", "*", "100"}], "+", 
      RowBox[{"5", "*", "50"}]}], ")"}], ">", "avtime"}], ",", 
   RowBox[{"Text", "[", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<Resource C is a Constraint!\>\"", ",", "Red", ",", "12"}], 
     "]"}], "]"}], ",", 
   RowBox[{"Text", "[", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Resource C is not a Constraint!\>\"", ",", "Blue", ",", "12"}], 
     "]"}], "]"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"If", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"15", "*", "100"}], "+", 
      RowBox[{"5", "*", "50"}]}], ")"}], ">", "avtime"}], ",", 
   RowBox[{"Text", "[", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<Resource D is a Constraint!\>\"", ",", "Red", ",", "12"}], 
     "]"}], "]"}], ",", 
   RowBox[{"Text", "[", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<Resource D is not a Constraint!\>\"", ",", "Blue", ",", "12"}], 
     "]"}], "]"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.7973305727457533`*^9, 3.7973306379584436`*^9}, {
  3.7973306928177676`*^9, 3.7973309121934814`*^9}},
 CellLabel->"In[18]:=",ExpressionUUID->"efe4cb4a-6fdb-48b8-9ff9-321da58752f1"],

Cell[BoxData[
 InterpretationBox[Cell[BoxData[
   FormBox[
    StyleBox["\<\"Resource A is not a Constraint!\"\>",
     StripOnInput->False,
     LineColor->RGBColor[0, 0, 1],
     FrontFaceColor->RGBColor[0, 0, 1],
     BackFaceColor->RGBColor[0, 0, 1],
     GraphicsColor->RGBColor[0, 0, 1],
     FontSize->12,
     FontColor->RGBColor[0, 0, 1]], TextForm]], "InlineText",ExpressionUUID->
   "b42208e5-a347-4b6f-8761-d93cde704dc5"],
  Text[
   Style["Resource A is not a Constraint!", 
    RGBColor[0, 0, 1], 12]]]], "Output",
 CellChangeTimes->{{3.797330796246609*^9, 3.7973308374571466`*^9}, 
   3.7973309206622334`*^9, 3.7973311701609364`*^9, 3.797332394123608*^9, 
   3.7975003983657913`*^9},
 CellLabel->"Out[18]=",ExpressionUUID->"c579dfeb-636b-462f-8aa5-78035509d14e"],

Cell[BoxData[
 InterpretationBox[Cell[BoxData[
   FormBox[
    StyleBox["\<\"Resource B is a Constraint!\"\>",
     StripOnInput->False,
     LineColor->RGBColor[1, 0, 0],
     FrontFaceColor->RGBColor[1, 0, 0],
     BackFaceColor->RGBColor[1, 0, 0],
     GraphicsColor->RGBColor[1, 0, 0],
     FontSize->12,
     FontColor->RGBColor[1, 0, 0]], TextForm]], "InlineText",ExpressionUUID->
   "f86b37cd-a96c-469e-ae49-85fd66a8f24d"],
  Text[
   Style["Resource B is a Constraint!", 
    RGBColor[1, 0, 0], 12]]]], "Output",
 CellChangeTimes->{{3.797330796246609*^9, 3.7973308374571466`*^9}, 
   3.7973309206622334`*^9, 3.7973311701609364`*^9, 3.797332394123608*^9, 
   3.7975003983657913`*^9},
 CellLabel->"Out[19]=",ExpressionUUID->"cf05baac-5d73-48bd-bedb-04e36fb71990"],

Cell[BoxData[
 InterpretationBox[Cell[BoxData[
   FormBox[
    StyleBox["\<\"Resource C is not a Constraint!\"\>",
     StripOnInput->False,
     LineColor->RGBColor[0, 0, 1],
     FrontFaceColor->RGBColor[0, 0, 1],
     BackFaceColor->RGBColor[0, 0, 1],
     GraphicsColor->RGBColor[0, 0, 1],
     FontSize->12,
     FontColor->RGBColor[0, 0, 1]], TextForm]], "InlineText",ExpressionUUID->
   "f9fc42e9-a989-48bf-80ce-4673df482058"],
  Text[
   Style["Resource C is not a Constraint!", 
    RGBColor[0, 0, 1], 12]]]], "Output",
 CellChangeTimes->{{3.797330796246609*^9, 3.7973308374571466`*^9}, 
   3.7973309206622334`*^9, 3.7973311701609364`*^9, 3.797332394123608*^9, 
   3.7975003983657913`*^9},
 CellLabel->"Out[20]=",ExpressionUUID->"37e54cba-27a1-423e-8c34-8dbb82417004"],

Cell[BoxData[
 InterpretationBox[Cell[BoxData[
   FormBox[
    StyleBox["\<\"Resource D is not a Constraint!\"\>",
     StripOnInput->False,
     LineColor->RGBColor[0, 0, 1],
     FrontFaceColor->RGBColor[0, 0, 1],
     BackFaceColor->RGBColor[0, 0, 1],
     GraphicsColor->RGBColor[0, 0, 1],
     FontSize->12,
     FontColor->RGBColor[0, 0, 1]], TextForm]], "InlineText",ExpressionUUID->
   "b05b7e5f-73a7-4855-a4f7-b22944125943"],
  Text[
   Style["Resource D is not a Constraint!", 
    RGBColor[0, 0, 1], 12]]]], "Output",
 CellChangeTimes->{{3.797330796246609*^9, 3.7973308374571466`*^9}, 
   3.7973309206622334`*^9, 3.7973311701609364`*^9, 3.797332394123608*^9, 
   3.797500398381467*^9},
 CellLabel->"Out[21]=",ExpressionUUID->"ba19f946-972c-4fbe-b76d-dccbec981d47"]
}, Open  ]],

Cell[TextData[StyleBox["Resource B is a Constraint from a TOC perspective \
because we can not fulfill the market demand.",
 FontWeight->"Bold",
 FontSlant->"Italic"]], "Text",
 CellChangeTimes->{{3.797330976584157*^9, 3.797331038908517*^9}, {
   3.7973324413278475`*^9, 3.7973324466082*^9}, 3.7975003039913464`*^9, {
   3.7975081887863617`*^9, 
   3.797508191377594*^9}},ExpressionUUID->"f52eed1c-0732-4ad4-abfd-\
caba102b15e0"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calculation", "Section",
 CellChangeTimes->{{3.797245004296667*^9, 
  3.797245007832656*^9}},ExpressionUUID->"146b5c3b-dcdf-485c-bfe6-\
0dc9e9569ae0"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"result", "=", 
  RowBox[{"Maximize", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "np", ",", "dc1", ",", "dc2", ",", "nnc1", ",", "nnc2", ",", "rescA", 
      ",", "rescB", ",", "rescC", ",", "rescD", ",", 
      RowBox[{"var", "\[Element]", "Integers"}]}], "}"}], ",", "var"}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.7972450315536537`*^9, 3.7972451451109257`*^9}, {
   3.7972472240270586`*^9, 3.7972472275770597`*^9}, 3.7972487693814855`*^9, {
   3.7973268572609887`*^9, 3.797326857635989*^9}, {3.7973268946359887`*^9, 
   3.7973268954016137`*^9}, {3.7973304613218646`*^9, 3.797330461743741*^9}},
 CellLabel->"In[22]:=",ExpressionUUID->"34d3f7a1-65ff-4da8-929f-7bb2588bfd5f"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"300", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Xp", "\[Rule]", "100"}], ",", 
     RowBox[{"Xq", "\[Rule]", "30"}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.797245154957925*^9, 3.7972459540380383`*^9, 3.7972472320810785`*^9, 
   3.797248771556487*^9, 3.7973242661299753`*^9, 3.797326744846033*^9, {
   3.79732681104219*^9, 3.7973268628078213`*^9}, {3.797326920517438*^9, 
   3.7973269340955663`*^9}, 3.7973269783624954`*^9, 3.7973270916149035`*^9, 
   3.797329439315238*^9, 3.7973297063375397`*^9, 3.797330500986575*^9, 
   3.797331170239114*^9, 3.797332394264187*^9, 3.797500398443967*^9},
 CellLabel->"Out[22]=",ExpressionUUID->"391d8899-01d6-46cd-93f4-5cb42e9d7022"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"maxNetProfit", "=", 
  RowBox[{"result", "[", 
   RowBox[{"[", "1", "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7973247104343195`*^9, 3.7973247357425203`*^9}, {
  3.7973266979078937`*^9, 3.797326698439144*^9}},
 CellLabel->"In[23]:=",ExpressionUUID->"6c634934-c8f8-4360-a1c1-65c9bcb93251"],

Cell[BoxData["300"], "Output",
 CellChangeTimes->{
  3.797324736884238*^9, 3.7973267449412985`*^9, {3.797326811120313*^9, 
   3.7973268628859377`*^9}, {3.7973269206268167`*^9, 3.7973269341581116`*^9}, 
   3.7973269792374887`*^9, 3.797327091708703*^9, 3.797329439440237*^9, 
   3.797329706415662*^9, 3.7973305010490727`*^9, 3.7973311703172383`*^9, 
   3.7973323943736076`*^9, 3.797500398490788*^9},
 CellLabel->"Out[23]=",ExpressionUUID->"d5cfba40-2c2a-4760-b4d3-1ead5bcda45f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"xp", "=", 
  RowBox[{"Xp", " ", "/.", 
   RowBox[{"result", "[", 
    RowBox[{"[", 
     RowBox[{"2", ",", "1"}], "]"}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.797324254393915*^9, 3.797324290635598*^9}, {
  3.797324321413828*^9, 3.797324346689993*^9}, {3.7973245766271186`*^9, 
  3.797324623778817*^9}, {3.797324679575342*^9, 3.79732469178036*^9}, {
  3.797327067880528*^9, 3.797327067943026*^9}},
 CellLabel->"In[24]:=",ExpressionUUID->"1b0f8033-ab67-400c-ac6a-aac1690c853b"],

Cell[BoxData["100"], "Output",
 CellChangeTimes->{
  3.7973242662129784`*^9, {3.797324299816116*^9, 3.7973243502853675`*^9}, {
   3.797324608074966*^9, 3.7973246246074443`*^9}, 3.797324694875168*^9, 
   3.797326745013632*^9, {3.7973268111828127`*^9, 3.797326862964063*^9}, {
   3.7973269207205677`*^9, 3.7973269342361913`*^9}, 3.7973269792999897`*^9, {
   3.7973270695367804`*^9, 3.7973270918024025`*^9}, 3.797329439533984*^9, 
   3.7973297064937925`*^9, 3.797330501127199*^9, 3.7973311703953123`*^9, 
   3.7973323944673576`*^9, 3.797500398553288*^9},
 CellLabel->"Out[24]=",ExpressionUUID->"227ef7a9-7b34-4c23-9a4e-660073a8fb81"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"xq", "=", 
  RowBox[{"Xq", " ", "/.", " ", 
   RowBox[{"result", "[", 
    RowBox[{"[", 
     RowBox[{"2", ",", "2"}], "]"}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.7973243566371374`*^9, 3.7973243732437353`*^9}, {
  3.7973244519333806`*^9, 3.7973244575870514`*^9}, {3.7973246435756845`*^9, 
  3.7973246532477007`*^9}, {3.797327074755528*^9, 3.797327075161828*^9}},
 CellLabel->"In[25]:=",ExpressionUUID->"d45c4731-4fd8-44c2-9b4d-af07d3e3949c"],

Cell[BoxData["30"], "Output",
 CellChangeTimes->{
  3.797324379776432*^9, 3.797324459171431*^9, 3.797324655295839*^9, 
   3.797326745113986*^9, {3.7973268117453165`*^9, 3.7973268630421906`*^9}, {
   3.797326920814375*^9, 3.7973269343299885`*^9}, 3.7973269804406166`*^9, {
   3.797327076083705*^9, 3.7973270918961573`*^9}, 3.79732943964336*^9, 
   3.7973297065719137`*^9, 3.7973305011897025`*^9, 3.7973311704734383`*^9, 
   3.797332394576681*^9, 3.7975003986157923`*^9},
 CellLabel->"Out[25]=",ExpressionUUID->"604a6f89-9e09-4acf-8692-44ea9fa80b34"]
}, Open  ]],

Cell["\<\
The achievable max net profit NP is $300. This is realized with 100 units of \
product P and 30 units of product Q.\
\>", "Text",
 CellChangeTimes->{{3.7972451854139233`*^9, 3.7972452526359253`*^9}, {
  3.797326708923519*^9, 3.7973267207523313`*^9}, {3.797330471446864*^9, 
  3.7973304836424685`*^9}, {3.7975003200953226`*^9, 3.7975003238729677`*^9}, {
  3.797508242543791*^9, 3.7975082434889107`*^9}, {3.797508307387663*^9, 
  3.797508308740716*^9}},ExpressionUUID->"e95c0008-5d3d-4b15-ae5e-\
0855a841550b"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Graphical Solution", "Section",
 CellChangeTimes->{{3.797246118737039*^9, 
  3.797246124830039*^9}},ExpressionUUID->"e32b6982-99bc-4f52-a126-\
e2c7d2b47584"],

Cell[BoxData[
 RowBox[{
  RowBox[{"FeasibleRegion", "=", 
   RowBox[{"RegionPlot", "[", 
    RowBox[{
     RowBox[{
     "nnc1", "&&", "nnc2", "&&", "dc1", "&&", "dc2", "&&", " ", "rescA", "&&",
       "rescB", "&&", "rescC", "&&", "rescD"}], ",", 
     RowBox[{"{", 
      RowBox[{"Xp", ",", "0", ",", "100"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"Xq", ",", "0", ",", "50"}], "}"}]}], "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.797245788158758*^9, 3.797245935382037*^9}, {
   3.7972477136858273`*^9, 3.797247713955826*^9}, 3.797247753875826*^9, {
   3.79724829467196*^9, 3.7972483001099596`*^9}, {3.79724843104196*^9, 
   3.7972484366029587`*^9}},
 CellLabel->"In[26]:=",ExpressionUUID->"b1f019a6-05d1-42b6-9de9-aa15737f5a19"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"ObjectiveLines", "=", 
   RowBox[{"ContourPlot", "[", 
    RowBox[{"np", ",", 
     RowBox[{"{", 
      RowBox[{"Xp", ",", "0", ",", "100"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"Xq", ",", "0", ",", "70"}], "}"}], ",", 
     RowBox[{"Contours", "\[Rule]", "10"}], ",", 
     RowBox[{"ContourStyle", "\[Rule]", 
      RowBox[{"{", "Red", "}"}]}], ",", 
     RowBox[{"ContourShading", "\[Rule]", "None"}], ",", 
     RowBox[{"ContourLabels", "\[Rule]", "True"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"Objective", "=", 
   RowBox[{"Graphics", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Thickness", "[", "0.01", "]"}], ",", "Green", ",", 
      RowBox[{"Circle", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"xp", ",", "xq"}], "}"}], ",", "2"}], "]"}]}], "}"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Show", "[", 
  RowBox[{"FeasibleRegion", ",", "ObjectiveLines", ",", "Objective", ",", 
   RowBox[{"FrameLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<Xp\>\"", ",", "\"\<Xq\>\""}], "}"}]}], ",", 
   RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}], "\n"}], "Input",
 CellChangeTimes->{{3.7972456579821005`*^9, 3.797245683058133*^9}, {
   3.7972457423711967`*^9, 3.7972457591718116`*^9}, {3.7972459895270367`*^9, 
   3.7972460081570897`*^9}, {3.797246219739687*^9, 3.7972462379697533`*^9}, {
   3.797246277918784*^9, 3.797246366217784*^9}, {3.7972464568719797`*^9, 
   3.7972464733059206`*^9}, {3.797246536658975*^9, 3.7972466702880135`*^9}, 
   3.7972467113200436`*^9, {3.797246770508522*^9, 3.7972467934385147`*^9}, {
   3.797246845453511*^9, 3.79724692774105*^9}, {3.7972471012420588`*^9, 
   3.7972471486320686`*^9}, 3.797247365870339*^9, {3.7972474552282877`*^9, 
   3.797247476571286*^9}, {3.7972476220437913`*^9, 3.7972477081567917`*^9}, {
   3.797247771592879*^9, 3.797247799045826*^9}, {3.797248180783959*^9, 
   3.7972481816069603`*^9}, {3.79724832545896*^9, 3.7972483320619583`*^9}, {
   3.7972484053949585`*^9, 3.797248412301011*^9}, 3.797248455638959*^9, 
   3.797248534606012*^9, {3.7972488015165024`*^9, 3.7972488149725375`*^9}, {
   3.7972489277821894`*^9, 3.7972489402283325`*^9}, {3.7972503413498106`*^9, 
   3.7972503680044966`*^9}, {3.797250447196313*^9, 3.7972504493994894`*^9}, {
   3.7972504884307394`*^9, 3.797250499676038*^9}, {3.797324784896613*^9, 
   3.797324791870048*^9}, {3.7973250229714937`*^9, 3.79732503465055*^9}, {
   3.797326727674156*^9, 3.79732672803353*^9}, {3.7973269040890646`*^9, 
   3.7973269048234887`*^9}, {3.797330492580324*^9, 3.7973304929397483`*^9}},
 CellLabel->"In[27]:=",ExpressionUUID->"7dd3f4f1-10d2-4871-b6c2-47c52b7e0cdf"],

Cell[BoxData[
 GraphicsBox[{{GraphicsComplexBox[CompressedData["
1:eJxd131sVWcdwPEyhAWkwpiESkYdCpMxFxYia8ZYeejtG0zgtr19cdlARKKE
bHWdop17kyhiVF5cO2fRYTcVN0KKRLK4VHBbgtplLpNE0mm2sS1MHLpYp47o
UmnO83mO6183n3LvOc/ve+5zzmXepzqbN19UVlb2pwllZWOv++duO1l36R+q
s9cT1UuOf/reO8tnBX5gz9DvussXJPc8+cot1/YsTl7Vffe27vKlyb/ZO+XY
qeKy5IbHeidd27MiedPpPVcMba1Jfvivbau7y+uST5+/7LaFAw3Jl09+de+p
4urkDTMfPbpj5OPJD1V2Di/tWZfc2dt3z8icpuTd++6eMbS1OXmg/5MP9w+2
JD93oPCx7vLW5DcPXXGiuL4tefrPp3QsHGhPvvqJc2dHRzuS9cu6TQr6sX6s
H+vH+rF+rB/rx/qxfqwf68f6sX6sH+vH+rF+rB/rl3Walfqxfqwf68f6sX6s
H+vH+rF+rB/rx/qxfqwf68f6sX6sH+uXdflg6sf6sX6sH+vH+rF+rB/rx/qx
fqwf68f6sX6sH+vH+rF+rF/WYUHqx/qxfqwf68f6sX6sH+vH+rF+rB/rx/qx
fqwf68f6sX6sXzb3otSP9WP9WD/Wj/Vj/Vg/1o/1Y/1YP9aP9WP9WD/Wj/Vj
/Vi/bM7FqR/rx/qxfqwf68f6sX6sH+vH+rF+rB/rx/qxfqwf68f6sX7ZXEtS
P9aP9WP9WD/Wj/Vj/Vg/1o/1Y/1YP9aP9WP9WD/Wj/Vj/bI5lqZ+rB/rx/qx
fqwf68f6sX6sH+vH+rF+rB/rx/qxfqwf68f6ZeuuSv1YP9aP9WP9WD/Wj/Vj
/Vg/1o/1Y/1YP9aP9WP9WD/Wj/XL1rks9WP9WD/Wj/Vj/Vg/1o/1Y/1YP9aP
9WP9WD/Wj/Vj/Vg/1i9b1/LUj/Vj/Vg/1o/1Y/1YP9aP9WP9WD/Wj/Vj/Vg/
1o/1Y/1Yv2wdK1I/1o/1Y/1YP9aP9WP9WD/Wj/Vj/Vg/1o/1Y/1YP9aP9crO
szL1Yr1YL9aL9WK9WC/Wi/VivVgv1ov1Yr1YL9aL9WJ9suPUpD6sD+vD+rA+
rA/rw/qwPqwP68P6sD6sD+vD+rAe2fsKqQfrwXqwHqwH68F6sB6sB+vBerAe
rAfrwXqw+bMudWl+Nj+bn83P5mfzs/nZ/Gx+Nj+bn83P5mfzs3mzfVGf5mXz
snnZvGxeNi+bl83L5mXzsnnZvGxeNl92X2xI87H52HxsPjYfm4/Nx+Zj87H5
2HxsPjZP9lxsTPOwedg8bB42D5uHzcPmYfOwedg8XFn1n8t72jvCPRXfalhf
qA6j11TsHpwcn/ddIby0aOk7rx1tDfeO/fvTK8Px+c1byzeXwv6xDu8vxNeW
+Pfa+L6m+Lm4H7qK8bgN8Txr43nz84dpJz480H99st8XP3n7jklDBzvCbWPf
o74b0vrGr9fz9esje+4Yuak9nCpe83yxMl//+Hk8bz5z7tDpOVPbwr/bLt20
sDOfb/y86flxZmhd4RelMPuWf701erwmzT++h/vXR15+/ZdbP9sSqjYN7zg1
I+8zvpf9f/EL7/loz+zm0L5lsGJgY95vfE/76fWT8/oGTxTDFzv3P7bjSH3q
O7637+uusTneWBse+ML25esnNsbuN6br4fvBWfc18To0pt8z+mfH6YjHrX73
78cLvbN1tcV1hvR80zebszXOnT8P9cy6lWLH/HmhX3YdmuN1qU33G72y69oU
r3N+f9In+54U4/emIf2+ffrckbN9ozekebffNTj5x8WQ//92+/4H7+rPf888
tXP7otJIvv5Xdm0evKpQm9Z7UW/j2ok9+f3/Q/uuevmF1/L1hP73dR1ZeuH+
UTn30fpv5/tvZsWy2Z3L21KvkUvav/bdN/L99/v3fv4fx/vy/Xdk0t6Nf17V
nOb/zuih52acz/ffqyO9X+4qrkvXN5tzTbof+L4U55ddX/liY3zN7w/ZOjvS
frNfs+OuiHPlv+fsz2wdIXbIf9/Yj9m6a2K3Uto/9l82ZyF2/r/nZdxvWZfa
eF3y5439lXWsj9ex+O77+4X9lHVvCI8feufq4b6OcHhsPb+tDt87MOf7E1a3
h/M7Dz71zNEQuvurpi463xo+sHtX6ZHJNeET+0pfav5pKVzXe/uZO9sL8bUl
/r02vq85fq4uHqcYj9sQz7M2nrcxHFg0bfOtI+3h7KQnzm8oD+Eb86882dvf
FqZM+8E3q9avDFsq61ceK7aGK2feN3f6wIXfuxWbBs6MtsTXQvx7c3xfXfxc
UzxOfTxuMZ6nIazo3DZz+psd4Ydj3eZVh3lb7r+v6qH2cPuvl7zYuzGECZsO
/23Dmraw99lZn7v1yIX/L9z87M07/1sKPzv59oS6iYXwZNtfhg4fbAnPD//x
/stKtaG/ePF1wzc1h7+/dGzBWz+qC19ZPf/AhKlN4ZIz/Y8/88/68Kux69e1
Liw+99VVj9Q3xvOujetojH/viO9bET/XFo+zMh63NZ6nJp63FNdRiOtqieus
jetuinPUx7mKcc6G8D/9o85d
     "], {{
       {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
        Opacity[0.3], EdgeForm[None], 
        GraphicsGroupBox[{PolygonBox[CompressedData["
1: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
zkfPZPcY5LyJWfotYKS88ZUXq2OKeeGBZzgWHtPUMd18pPemqnOGNXjjB+fa
u1muBVf83Wy5zzUvfPI8+eEfF8gFv3a53BdaoweLzEe4/xQ14DGXqHmx4wr/
vNSxy1x3mn1dZs8WyAMNy+07mlaYo2GleeHxNqsDn7g6S156ZZa89Kosed3r
1bza2kLvXZclL70mS357rZqvM1/i3uuy5KvXywnfd6va8Ikb1HazeeFv77Qf
G5xPDzY6rvDSG9Vwu+ui4Q7zwmPfYr/WynusmmdlyVczp/CKz2fJA2/Kkpe+
J0te+l554PkeVvcma4UHfkj99P4BNWzxeWywviVLXvoRuW41L7zu01nyzI9l
yTM/niXPf3eWPPbWLHnpJ7LkpZ/Mkmd+Jkue+dkseeynsvSbwl1Z8tLPqQEv
ibcsvu/yHbHwwK+qDV/5cpa89CvywOu9pe5XrRUe+E31v+5aaMAfvKGmN83R
8LZrwXWbeeF1P8ySZ34nS56ZHN+Bl/k5Sx57W5a89LtZ8tLvZckzf5Qlz/yx
+tnngyz9LgBvfOEv7lH46k/Ug3/8VB1fOLbwxl+4Bvy2q/Nzc3R+6Tj44sm+
Us9Oc/TvcNw26zvktN29C/+8U954ym+z5I1/UNP31tC8y/xj67uy5J+Zg2f/
2l6h7Udr7PeT+Xb7/VOWfl9gjcIjcYYKL03v8HZ4Jepow6fiH9GGh/xNbXwJ
/V1OfP/HQ6KbsdTgXXhuvDXr7FQz/hS/ik7q5OjDQ7BW4aXJC2+MV0QPXhPP
iR48KTl++lB5op868wvvzTjOBN6THA140oND8tLk6Gcfxi0L+e8C54X0+8Kv
6mYv5mz2jL5kD/hMVgzJhx+u/grm7I2vPMp+VbRWeOyqaq7kWoXHrqzOquYH
+b2lWkheunpIPvm4kLw3XvVSr8vZd3gdpv4azl8Rch8+zhpetVZIfvv4kPx2
7ZD8OeOuCvnvGmND/l1wcJZ/jyi8d52QvPdJcuW7V4OQfHjdkHx4PdfGh54c
kievH5KXbirvRq61KuSe/Hx5U8frznRMjZD8ebOQPHNbNeFn8beF324h71bm
ta03D8mrtwrJhxe+vI21woezxxyv4bk65J78gpB8ON4Wf4n3GhiSxz4jJE/e
KSRPTo5XLnX9wp93lgv3S+Td1bUKH95NjiXm14Tce48Puc/G2/Z0Dv6rvxzx
sL3l0ce8+O2g0NDb+fDr67jCk/eVywDXLTz5ALn3d1wT14IL3mKI52mh/SmR
H159sDzw2MPcb7g5PIY6rvDqQ+UxwnHwwGeOksdo88LDj5DXKPMljoH35SH3
zBND7hV4T/AuvjjknwPed1ND/nnifTE95GeTz+Esnz/ncq6953wsiDHB57fI
tdH8vu963vPsxfU33pvkvsVvLl29d9GfOPH+5d17Scj57SZeIleuJ3t/snkZ
g3cr79Vp6ikvTlPbVMeUF6eql+C9U07tXNcUp9uHGV7XFGf8qUd8bmvYK64b
i7Ps22yvG4uz/9RTPm8N7S3XHWJcG/LfeiZ4b649n+d1B3Gez4O9Vrr+xhhP
qJf+XGGvJnoGzhY5E2Ni3BLjSbW8HGNDjB4xXolxU4xBMZ6PcYN9ey7G9a75
Yoz17vtCjHX256UYN8rzPDnwbMFlzqX/V7omfV7uXM4Tnx8+O5yrxXJfbD7I
+iK1LDLn/mUhP5c91L/cZ7vAGv2cb17q/lfJYaw552iJPaI/o83HuB/XA11j
vnvdHONx12DPFWqhvsYxC32m8LwtxtM+uwneh88dMZ5V790xHrN/nBXew41c
7xrXHG/e3mf+gLpvjfGU8+C1SW73+Pzo/30+V7TfHuMZuTDvIec+GvJzMEiO
13rNWeG8cfY3h/wcNFbTI/LaEvJzwBmYI/8OzlvleO6t9j77b5VDe3vXzn7c
ZU8eDvkZRfv9IT9z9Jnz+6C86Nm99u0PxajxWw==
           "]], PolygonBox[CompressedData["
1:eJwt0VtKgkEYxvEx20L3eeMS3EEbqA1I156yQBAEQRACQURERNRKrTxkaWl5
aAlaqZWli3AJ/geeix8ffDPvvPM+4zoNHgf2jDGH2EfHYcw30rhAHyvkEEQX
P8jAj1f8IY8QnvGLLAIYY40iwhjiHwWc4R0blHCOK3wghgPVjnCiM2pY4FL/
lmjrrimttXSW3TNHU72TqKvG7vXiBl9IwIOqauzeI5QxRQRb8rnm+4k43Khg
hiicyu4BPmVos+hplqxmu1OWMdXeKquoej0q24iyftLZGfW+V9Zxvc2L7pLT
LA1lm1DWb5qloLcaaNa8sp8oC/sGO10TT0w=
           "]]}]}, {}, {}, {}, {}}, 
      {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
       LineBox[CompressedData["
1:eJwt0TcyBAAABdCVcw69CifQ0KoxLiDHoaVwA67ArpxzzpmVc1x34AaeGcWb
+c1v/i+o7azqiAoEAj1E85fzKKaMShropo8QK4T54odYpXwKKaGcamqopY56
GmikiWZaaKWNdmZ4ZpYTpnlihCu2ibDDMVM8Mswlm3yyxRGTPDDEBet8sMEh
E9wzSJhV3lnjgHHuCHHOMm+ssM8YtwQ5Y5FXlthjlBsGOGWeFxbYZY5r+vm2
Y4RzlgnSSxf1VFBKEbnkkE0WmWSQThqppJBMEokkEE/c31/E/P/9C/Y4Q+E=

        "]]}}], {}}, {GraphicsComplexBox[CompressedData["
1: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
9VbeAyNWXkcbeR1t5HW0kc/Rhr8DY1ZeRxt5HW3kdbSR19GWv0krr6Mtf5NW
fkcb+R1t5Fsky5+jjXyONvw52si7GPOA/HX6tOXP0UZeRxv+HG3kdbSxj6ON
/IsF4L9g5Xe05b9g5Xe05d/HIZ7/stWHoy3/ZasPR1v+y1b+xSrwV7XyO9ry
V7XyO9rIf3rDyu9oI6+jLX8NK6+jjbyLLbB/y8rraMtvy8q72LL8DXWs/I42
8jvayDvk6xt+XB/Kyvw6Fmie/2aKgT4naX9tw17/rLlA8/Ov3WHvD/WEVfJ7
wGGrRJ93VQLN8jRmyFy/OB9ome+HhN7dr/NrJtDc35vbgTb8OdrIS0Nk5HW0
kdfRRl5HG/n89V4+2mL5I78u5wJt5HW0kddf7+V1tOV33MrraMvvuJXf0UZ+
f33gNwvyZ4HfLMifBX6zoI+slb83Z/l1tJHf057f3pyVvzdn5V/IW34X8lZ+
Rxt+/fVefkcbfv39Xh+9JeA/5n09bfkvWX346wP/JSv/QgX4rVj5HW35rVj5
e+tWfkcbeXvrwE/dyttbt/IuNK28CzGP7Wkjr6cDvz6vNR9ow+/etpV/b9vK
v7dt5d0L9WA/Hjw+Pn3atveWLL3QBPzk55/Vgbbzne6HnYlxjJ3PfL5M+9sN
8+lumE+X1Hsn7Hri1n/LH+bfurosvjuUtfk6rdeG+L2ry+K9Q1mbD4L6rovf
DD8LeUuHeNXHxz02vgj1UV3/HB608cMA5NcGAF+ut/HEIuD3xbZd79z6ZPHv
KuivH/IFw5CvGYb5asjSDi/afHUV4vEqzD8wHhehPhDir6lAy3dOvnuBdnjA
yLsX4ouQj/Xr8XKgl0E8sAzwv6/H7wq0tTfsD3Afm584lLX27bPzgbO/Xb97
YL/MgJ2fnP0tfhiE+Gh94EPoYTtfBXt5PJGy9nPtFj+kbDy9APvjQr5F+1sE
OuyH8/WBgrU/7k86APOrs6/lt2n783gw4KEm1C/adr5dbMH6DvH0bsBziO+w
PuHjWz//DQGN9RCfTw/zaQ/MZ6sgP4b+0APx6irIh/XA/qgeiF9XQf4D9ieE
/e8+LloGdLfF2x5/hvl3AOoHAxAvw3zj97MEutvif9e/zY8MQP1gAOLrftB3
X7jOt9v8qh8fk4E2+N/Nd9YefRCf90O9fxjyxcN2PnH9WXv1QTzfD/YYtP5B
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
cvWI5jtI49lROpYD1g5x+L1/lDid8LW0xp+Tmgdo0n4O0CfoYb5vRPNORHdx
XFqjJNpcfjERp3deup0+xvyS5jueQ1XOQ0zTAearJPH5ymnNf8zRjZxQytE+
FrBb5ShInmY8Txy+Xlugb/B1M/Rrlrsg+aebSfjOljXO7mheoKzz6riuo1XN
P7SI2ftilZJuB56/U/JmH67Sa5I4eOdyzcPUaTXH+zVic7Qako+4ejvdm4T9
mxsSR/cT/Vuin0aL7mccXKZnqL+ze9w3R8s4b9RSf0lLPP4XH5fPSr5gU4c+
pesb51G2dOggJ7jW0E9Zzw9lJQ9QpJ+wwA9kWd/3ztKdnI+5Jyt2z6l9jtc8
3Awdw/IeR19n/W3Q/E2f6P11bTqX/ayfXsLy99AOzr8Man6joPYbpEMsX4P6
eEBsIk7fvG+H5OuWD9F57L8Hs5JXSWl+I0e/ZH5T1MMJiY7+nhL936n5uPEt
Go/OU4PttUX1s03zlmnVd1vyH2NpOp4TSKOa/8iof9bpvzkRkpE8Y3EHbWHH
ydAC+/Eg8ePvmlJ7VNSPptSv5uX6T05pvnUNcRruojx9isdzQf0mr34yS6y+
XJ6GePw8lmV1HVOSPNWlOb2vSF/ihPCM5Ft+UdT8XkbzYBUdN21iM7yyovZa
LX779hqdzY48Jvo5tq752wbxsFtW1+ft0DxhTe3xsyxPDz1N1f+Ujvum5nMr
xOa6qkkXsh7m1e5NzRdNEndbb6ud55RfOO/WtUXWs+/H89ef4wn2kXA+0VxO
TbqMO15Nu5jfI8L8L/mgI+g3vD7G870TvGDF9/j7eucDvGD/JSvrfTwP5+ur
Z/GCeHdW8GM8H+frrZ/gBMOt2Xv5eSvDeuDryYy/wrmIeH7O7xcVGNtRvBHf
hyDPi+8flHlpp84rEzouCjK/DRwe1qtnMkDokvXywXh+TsbVrObtugI+yvNC
+pjW/+P5OcmT7xT/S2n96EXxvJzgxJ2CDw/o+fouX3/pobfwBDNMr2EH79F8
Rnxfp+QnS+pPA7q+x/eFSd2iqeOtTX/m+WMzDfEFx2sedbPm+VfRFZywLtNj
nI/v1/xbfH+mzLMzkm8/MEK7eDzE99+9ifldI3r+fVXxVXx/3Gl8fU7z3Q3N
X+dk/n9egz6o+JTzQC9rq31aUpe5oq3jd4w+yeP06YonFB/78zSjY3QBK/bo
4B/if08N+0Wv4j+eJHnv7TvpvTzu7soKv/E8m7fPVR9IAMkFWY9fL+N688NZ
tufaeN6N9XNrhb7Jdl+j8sf3vfr6+a0cb/XSy3miaeo8s1HWy1Pj+y9k3TtC
15HNlGP9PQzn1x7PMr69dnOIHzmumxmhp/J1Gl86e0k8Ef9/D34/A+c/vj4i
9n40nm/+HDP0VM3nFcPzGF4+UaRbeX7R8erivRmtewj/tbAfgr8OVul2nt+7
ZP2/sKHy3A3n2x6Xc6jvaQR52I731uljzM/h0v/pDY134vu4Zd5sy7r485bK
G8+7+f0lnP/4fkvXox5Zrx+L+zc4/v9qO+AcHh73xfPHPNz3t2kZO+7T6USe
kLvp8+cnDNToJJ5PjiceRh/eTkexAx9HN/BCOkVnMb46if6DFz4iLhcs79N6
YYfKvGCs1nE7R3/iussp9BEubA3outGv9cG0rqODiq/a9C6ux6xTf5rVeXCI
GE7+bie9MZk2TlunOPc4GVdXDWl9dETWqRekpC6yP0/DyX1nDClfVXpvMm88
J6Xz5g5Z93cN0x+Zz37BF+9Ma/1rSuRzcZw8r6S4Oy3j+rwOLfI43KJ1oznB
Eyem6QDzs0LmuRsyiuMnFFf7fTV5qSe/MaN1n5bWEccVZ8/IulrOaP8pqWcd
zKp9iWSZntI6ak3roFmt+3To5wlM+NIUMZz5xXbFbVni6fe09WKHy3Jalx0X
/HJ2nm5hRyxLPPCKnMyftzaJ1dLOS52tZ17qX50cMazpPVHqUM8uKL7YLPjm
8JL6S0HmxSMKtJufXyOebg4Wpe754lmZ1//gxi/743bBC98pKl5ap/WmisYl
U6KnD5Q0XijJvPyGiuKwjuD6i0vK/5zo5fSK4rxJwYebqlqH1LrdirrGRS15
7sqq1qFnpT7215rgmu/tFDz5SIUuYUM8S9a9wbri1BEZN8c01X/qEudcW1c/
7ggOfVeTWH0rdwife+q0igXvl3hhti1+cfiU4LOPxXMlfn54gA1cEr4LbdHL
rnkZF30t+i0/YELqzh9pi70WZiX++nVb4s894/QRnuAezApOm6ZHeSJYSd9m
QzXoxWzgp4lf/a1JFZ4P7hOcuG9G+1mhuHeHjtunqH8N0Y84bluj+m1rvLBW
1+V5nWd69feTdX3fQKfwBZN0FeP9AdVfUeOV9eIvT5qjZ/O4Xq9x6E6d1zZq
nXgLcVn6lmHFuTliN3rU4QF+Xp0uSux4xbDiVq3HPuBwB3e4UfcNjNJ5HJ9p
Pbxvq8YJFanHf2VU8Mh72oJH7h/TOGSeTk26ecso/TuPh16Jn9dMyu9HbhX5
29toBQ+EguC1eyfo7zwRNWiQ68TbtE47q3XpCdHvf+2QOOC3kzoeh3X/wJT6
R07Wg3eS4pOq2OdkP390JF47h6S+/T/zEgcdNaX1/z4ZBz+Zpvcx/tomz1sz
rXYrij6/MK39tyUeP3Ja45w5mf8/NK3rxajE5Tf4uGha4oRmUfFcQ+apDxY0
jpmR+v9IUdaXM3eIP7+xQM9gfW0S/2uUZV7+WVbi7rvKuh5UZN4eLgs+ua0t
/nVzOdQDJP9d1v00WyW+vKimcWxR/OymKo0y402ZB59f0+tnZR/BJ6pi7wd2
CL7N1Yjd8JIt4pffqqt9q2K3Qw3FwzMSh001xL6j28W/b2/Q83jB2kgcDp7W
0vxKRuaHh1qaR5mTeXasrfmSMfHPfEfn84aMg9HOknhJ5pNYf8f6OuInHO+I
NzH/h/Wl/y9f9n8FYKpE
     "], {{{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}}, {{}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[{1190, 1711, 1452, 1519, 1454, 1777, 1453, 1564, 1195, 1716, 
         1465, 1522, 1467, 1781, 1466, 1568, 1201, 1721, 1477, 1525, 1479, 
         1784, 1478, 1570, 1203, 1723, 1489, 1527, 1528, 1588}]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[{1404, 1572, 1224, 1599, 1598, 1597, 1405, 1640, 1265, 1422, 
         1767, 1421, 1227, 1180, 1701, 1423, 1268, 1438, 1772, 1437, 1230, 
         1185, 1706, 1439, 1272, 1450, 1776, 1449, 1232, 1189, 1710, 1451, 
         1275, 1463, 1780, 1462, 1234, 1194, 1715, 1464, 1277, 1653, 1654, 
         1652, 1476, 1237, 1200, 1616, 1617, 1604, 1605, 1488, 1786, 1487}]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[{90, 1589, 1590, 1372, 1752, 1371, 1549, 1169, 1690, 1386, 
         1508, 1388, 1757, 1387, 1552, 1174, 1695, 1401, 1511, 1403, 1762, 
         1402, 1555, 1179, 1700, 1418, 1514, 1420, 1766, 1419, 1558, 1184, 
         1705, 1434, 1516, 1436, 1771, 1435, 1560, 1188, 1709, 1446, 1518, 
         1448, 1775, 1447, 1563, 1193, 1714, 1459, 1521, 1461, 1779, 1460, 
         1567, 1198, 1719, 1474, 1524, 1236, 1199, 1720, 1475, 1279, 1658, 
         1486, 1657, 1485, 1239, 1587, 1586}]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[CompressedData["
1:eJwVzj0rhXEch/GfPL4KdV4AdrwBhDKhLBYsx6AwWCwesljEMTAcysBiMFgc
SXKQsigxGAwkKUVMPr/h6vpe993/f9+F0cmBYk1EjGCuLmKhIaKlPuIBbbjU
rVzL896vcLt+QidudAc3chO67Tvu4kreh1Xdo1/tIb7Xg3yW92FND+t3e5wf
9Rif51mU9IT+sGf4WU/zRZ7Flp7Vn/YSv+hFrupNlPWy/rI3+E2v57/rbezp
kv6xd/I7usy3eRb7elf/2b12P/owhWYceH7EJ/kNnOZdusIFPvT+mKv6G9f4
1Vf8D8bRO9s=
         "]]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[CompressedData["
1:eJwVz7srxXEch/GvwiDlUlJCWTHwT7iNyn2Ty0ZClAzKMVjOcoiBOAvFgJLk
UspwjFJnICEnJVkMSkle3+HpeT+/z6/T79QNjneO5YUQptBUGEIzsvkhZApC
mLFveJb/PLu0j+19+w7n+ltf8K8+4kO9a9/iQH/pQ/7RVfa2/cnpaGxhL7Z7
Ja/od17lD6SwozfdKzihc7wU38Mi0nrdvZyn9DNP8xsmsaFT7iU8rB94hF8x
hDWddC/mbp3lHn5BV/wGvexexK36ltv4CS1Ixu9yL4y/i1F0IOdZO79yo/cS
9px9hnqd0Q3xe3UtL+gZ+xTV+lrX8GP8bzyvJ+wTlOorXcb3ut8eiN+NPvTi
H2DQRHA=
         "]]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[CompressedData["
1:eJwVzr0vg1EAR+FLsGEuMVjQpUafGyamEiutxUBbHQymogtDE96BgcFSI/+A
EEQi6WAgwiIhEYkIkbCI8HQ4Ob9z7x1uezqbzNSEEGbR0RBCG7LIIYM8FvBR
H8IBDu39uhBiPId5jOHb2Sh/ceRd2d61K9jQL3qTP/Uq7+lt+xLL+kmv8LvO
846O7Avk9EP1H/ymZ3hLl+xzpPS9TvOrnuBIr9mnSOobPV79hx7hki7axxjS
V3qYn3Ufr+uCfYQeXdG9/Khr7S57iuM8zXfciaK95M2f3YIz3cq3iKGgF93/
2k040c18jUm7kft5AIP40d2cwD/jEzr7
         "]]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[CompressedData["
1:eJwVzzFLQlEYgOFPyMiMQHBwbahfYM1lS1NWs1a0ZaQtbVFBSw0X5A41tPQr
xClHh4aWliBMhKCf4XOGl/d7zwf3nrN21jvqFiJiH+VixGgxYoW/FyJK/K6X
eKCvcKOX9Y+5bT5GCzVnQ2fX2NO/3OBdbNiNeZ0LfGf3xPX0HWzhQ29ykR/s
M97WEzTwqXe4xI/2OTf1FIf40gdc5sz+Od1Nz3Ca3qNPeJVz+1e+1H/opf/o
Llf4xf6Nb/U/Lsz3fJ7uzh2upvegr+cPHCZY
         "]]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[{1164, 1373, 1258, 1358, 1681, 1159, 1217, 1356, 1747, 1357, 
         1255, 1343, 1676, 1154, 1214, 1341, 1742, 1342, 1253, 1331, 1672, 
         1150, 1212, 1329, 1738, 1330, 1249, 1316, 1667, 1145, 1210, 1314, 
         1734, 1315, 1246, 1303, 1663, 1140, 1494, 1493, 1302, 1662, 1139, 
         1532, 1286, 1725, 1287, 1491, 1621, 1285, 1591, 1592, 1593, 1530, 
         1581, 1580}]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[{1283, 1724, 1284, 1240, 1619, 1620, 1618, 1282, 1205, 1135, 
         1606, 1607, 1600, 1601, 1301, 1730, 1300, 1534, 1144, 1666, 1311, 
         1496, 1313, 1733, 1312, 1536, 1149, 1671, 1328, 1499, 1636, 1637, 
         1633, 1635, 1634, 1540, 1571}]}, 
       {RGBColor[1, 0, 0], Opacity[1], CapForm["Butt"], 
        LineBox[{1138, 1299, 1243, 1281, 1659, 1134, 1204, 1490, 1280, 1575, 
         1576, 1577, 1529, 1579, 1578}]}, {}, {}}, {InsetBox[
        RowBox[{"-", "5530"}], 1787], InsetBox[
        RowBox[{"-", "4740"}], 1788], InsetBox[
        RowBox[{"-", "3950"}], 1789], InsetBox[
        RowBox[{"-", "3160"}], 1790], InsetBox[
        RowBox[{"-", "2370"}], 1791], InsetBox[
        RowBox[{"-", "1580"}], 1792], InsetBox[
        RowBox[{"-", "790"}], 1793], InsetBox["0", 1794], 
       InsetBox["790", 1795], InsetBox["1580", 1796]}}], {}}, 
   {RGBColor[0, 1, 0], Thickness[0.01], CircleBox[{100, 30}, 2]}},
  AspectRatio->Automatic,
  Axes->{False, False},
  AxesLabel->{None, None},
  AxesOrigin->{Automatic, Automatic},
  DisplayFunction->Identity,
  Frame->{{True, True}, {True, True}},
  FrameLabel->{
    FormBox["\"Xp\"", TraditionalForm], 
    FormBox["\"Xq\"", TraditionalForm]},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "ScalingFunctions" -> 
    None, "TransparentPolygonMesh" -> True, "AxesInFront" -> True},
  PlotRange->{{0, 100}, {0, 50}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.797247669198803*^9, 3.7972476979837937`*^9}, {
   3.797247785307826*^9, 3.7972477996158786`*^9}, 3.797248183606964*^9, {
   3.7972483159989576`*^9, 3.797248334450968*^9}, {3.7972484132459583`*^9, 
   3.7972484563739595`*^9}, 3.7972485353409595`*^9, {3.7972487784294863`*^9, 
   3.7972488177244854`*^9}, {3.797248929103242*^9, 3.797248941190339*^9}, {
   3.7972503597717333`*^9, 3.797250369098196*^9}, 3.7972504508369913`*^9, {
   3.7972504894463186`*^9, 3.7972505010510397`*^9}, 3.797324267144907*^9, 
   3.7973248010125523`*^9, {3.797325023943774*^9, 3.7973250354791155`*^9}, 
   3.7973267453337526`*^9, {3.79732681191719*^9, 3.7973268632609406`*^9}, {
   3.797326911126813*^9, 3.797326934517437*^9}, 3.7973269816281652`*^9, 
   3.7973270921305275`*^9, 3.797329439893362*^9, 3.7973297067594137`*^9, 
   3.7973305013928256`*^9, 3.7973311707078123`*^9, 3.797332394811058*^9, 
   3.797500399381414*^9},
 CellLabel->"Out[29]=",ExpressionUUID->"99a9ca9c-3fdc-4d33-9f86-b6377910c4fd"]
}, Open  ]],

Cell["\<\
In Grey the region of feasible solutions.
In Red lines of possible objectives.
The Green circle marks the point of max Net Profit.\
\>", "Text",
 CellChangeTimes->{{3.7973260051740828`*^9, 3.7973261129134455`*^9}, {
  3.7973297341032143`*^9, 
  3.7973297360406637`*^9}},ExpressionUUID->"c77c04ea-4744-48a0-ba7f-\
15313b46b8bf"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Keywords", "Section",
 CellChangeTimes->{{3.7972415421706576`*^9, 3.7972415479566584`*^9}},
 CellTags->"Keywords",
 CellID->442466898,ExpressionUUID->"fd892e14-b98f-441b-94d4-b13ae8c0fafc"],

Cell[CellGroupData[{

Cell["Product-Mix", "Item",
 CellChangeTimes->{{3.7972439931282744`*^9, 
  3.7972439969102755`*^9}},ExpressionUUID->"18f5ccad-1fd1-4543-b203-\
8d00e50c9caa"],

Cell["Goldratt", "Item",
 CellChangeTimes->{{3.7972439931282744`*^9, 3.7972439969102755`*^9}, {
  3.797244068218275*^9, 
  3.7972440703232756`*^9}},ExpressionUUID->"3582c908-e466-409d-af63-\
aa937370fb97"],

Cell["TOC - Theory of Constraints", "Item",
 CellChangeTimes->{{3.7972439931282744`*^9, 3.7972439969102755`*^9}, {
  3.797244068218275*^9, 3.7972440703232756`*^9}, {3.7972502392489986`*^9, 
  3.797250248738134*^9}},ExpressionUUID->"471a66a9-0964-4f14-9b4c-\
1ae62aa1253a"],

Cell["TA - Throughput Accounting", "Item",
 CellChangeTimes->{{3.7972439931282744`*^9, 3.7972439969102755`*^9}, {
   3.797244068218275*^9, 3.7972440703232756`*^9}, {3.7972502392489986`*^9, 
   3.797250248738134*^9}, {3.797331410032816*^9, 3.797331418142191*^9}, 
   3.7974997942418203`*^9},ExpressionUUID->"dc306665-26da-4ec9-8075-\
c149286c9308"],

Cell["Optimization", "Item",
 CellChangeTimes->{{3.7972440019852743`*^9, 
  3.797244004994275*^9}},ExpressionUUID->"6be3e3c4-fadc-4c4e-a48a-\
cdf14b83c8a6"],

Cell["Operations Research", "Item",
 CellChangeTimes->{{3.7972440019852743`*^9, 3.797244004994275*^9}, {
  3.7973248560527377`*^9, 
  3.7973248612640038`*^9}},ExpressionUUID->"5f8bdee3-f4fb-46c8-ae26-\
9e767d1d56a5"],

Cell["Management Science", "Item",
 CellChangeTimes->{{3.7972440019852743`*^9, 3.797244004994275*^9}, {
  3.7973248560527377`*^9, 3.7973248612640038`*^9}, {3.7973249503822765`*^9, 
  3.797324954314068*^9}},ExpressionUUID->"ca5e3d7e-453d-4ea6-92e0-\
4c8c1dc711f5"],

Cell["Production Planning", "Item",
 CellChangeTimes->{{3.7972440019852743`*^9, 3.797244004994275*^9}, {
  3.7973248560527377`*^9, 3.7973248612640038`*^9}, {3.7973249503822765`*^9, 
  3.797324982575822*^9}},ExpressionUUID->"a5e31a17-c40f-48de-8300-\
7e9ed773c524"],

Cell["Business", "Item",
 CellChangeTimes->{{3.7972440019852743`*^9, 3.797244004994275*^9}, {
  3.7973248560527377`*^9, 3.7973248612640038`*^9}, {3.7973249503822765`*^9, 
  3.797324982575822*^9}, {3.7974990350929193`*^9, 
  3.797499036749118*^9}},ExpressionUUID->"4751e252-0af0-490a-ae41-\
9a9eca9fd279"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowToolbars->"EditBar",
WindowSize->{808, 911},
WindowMargins->{{38, Automatic}, {34, Automatic}},
FrontEndVersion->"12.1 for Microsoft Windows (64-bit) (June 19, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"b0ae934a-e45f-4ffb-afe0-f648d43aabc6"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "Examples"->{
  Cell[1510, 35, 367, 7, 96, "Title",ExpressionUUID->"37a2fa84-d21a-4eb0-9290-243940573106",
   CellTags->{"Examples", "Your Essay Title"},
   CellID->268474920]},
 "Your Essay Title"->{
  Cell[1510, 35, 367, 7, 96, "Title",ExpressionUUID->"37a2fa84-d21a-4eb0-9290-243940573106",
   CellTags->{"Examples", "Your Essay Title"},
   CellID->268474920]},
 "AuthorName"->{
  Cell[1880, 44, 2411, 40, 31, "Author",ExpressionUUID->"554b7333-ed55-478e-980a-9398097dd564",
   CellTags->"AuthorName",
   CellID->205054650]},
 "Abstract"->{
  Cell[4294, 86, 62889, 1029, 974, "Abstract",ExpressionUUID->"f8c2e1c6-7e13-477e-9db2-c9e64dea2538",
   CellTags->{"Abstract", "TemplateCell"},
   CellID->306388670]},
 "TemplateCell"->{
  Cell[4294, 86, 62889, 1029, 974, "Abstract",ExpressionUUID->"f8c2e1c6-7e13-477e-9db2-c9e64dea2538",
   CellTags->{"Abstract", "TemplateCell"},
   CellID->306388670]},
 "ExampleTopicSentence"->{
  Cell[68350, 1157, 351, 5, 53, "Subsection",ExpressionUUID->"0a18e66f-20a3-4f63-bcd7-17382c7209da",
   CellTags->"ExampleTopicSentence",
   CellID->441483709]},
 "ExampleCodeText"->{
  Cell[69056, 1176, 2105, 31, 53, "Subsection",ExpressionUUID->"380628a0-6d0d-4540-afd9-fe1ce95eebe3",
   CellTags->"ExampleCodeText",
   CellID->437581247]},
 "Keywords"->{
  Cell[118999, 2233, 195, 3, 67, "Section",ExpressionUUID->"fd892e14-b98f-441b-94d4-b13ae8c0fafc",
   CellTags->"Keywords",
   CellID->442466898]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"Examples", 121842, 2309},
 {"Your Essay Title", 122029, 2313},
 {"AuthorName", 122210, 2317},
 {"Abstract", 122372, 2321},
 {"TemplateCell", 122560, 2325},
 {"ExampleTopicSentence", 122756, 2329},
 {"ExampleCodeText", 122940, 2333},
 {"Keywords", 123114, 2337}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 367, 7, 96, "Title",ExpressionUUID->"37a2fa84-d21a-4eb0-9290-243940573106",
 CellTags->{"Examples", "Your Essay Title"},
 CellID->268474920],
Cell[1880, 44, 2411, 40, 31, "Author",ExpressionUUID->"554b7333-ed55-478e-980a-9398097dd564",
 CellTags->"AuthorName",
 CellID->205054650],
Cell[4294, 86, 62889, 1029, 974, "Abstract",ExpressionUUID->"f8c2e1c6-7e13-477e-9db2-c9e64dea2538",
 CellTags->{"Abstract", "TemplateCell"},
 CellID->306388670],
Cell[67186, 1117, 219, 3, 28, "Input",ExpressionUUID->"7be314a8-658f-46f7-83d9-0212126a6762"],
Cell[CellGroupData[{
Cell[67430, 1124, 158, 3, 67, "Section",ExpressionUUID->"14e05961-06f7-481d-88c9-50d053d94579"],
Cell[67591, 1129, 231, 6, 34, "Text",ExpressionUUID->"bf4125ec-e5a6-4171-ba81-6e032678a017"],
Cell[67825, 1137, 310, 8, 48, "Input",ExpressionUUID->"4dca7a8c-b50f-4fd6-b1a7-ed2080ed20b1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[68172, 1150, 153, 3, 67, "Section",ExpressionUUID->"2581e9e4-5499-4037-94b4-0fc9ee23d258"],
Cell[CellGroupData[{
Cell[68350, 1157, 351, 5, 53, "Subsection",ExpressionUUID->"0a18e66f-20a3-4f63-bcd7-17382c7209da",
 CellTags->"ExampleTopicSentence",
 CellID->441483709],
Cell[68704, 1164, 315, 7, 48, "Input",ExpressionUUID->"ccec5f64-deb4-44ca-a103-6bacd10c0e82",
 CellID->56094298]
}, Open  ]],
Cell[CellGroupData[{
Cell[69056, 1176, 2105, 31, 53, "Subsection",ExpressionUUID->"380628a0-6d0d-4540-afd9-fe1ce95eebe3",
 CellTags->"ExampleCodeText",
 CellID->437581247],
Cell[71164, 1209, 434, 11, 48, "Input",ExpressionUUID->"3578914a-eb02-4452-afea-6da9771014e6",
 CellID->57065598]
}, Open  ]],
Cell[CellGroupData[{
Cell[71635, 1225, 245, 3, 53, "Subsection",ExpressionUUID->"b41b0798-6df5-4bb7-ad4e-7ed7a2e3e791",
 CellID->26316050],
Cell[71883, 1230, 236, 5, 28, "Input",ExpressionUUID->"709985e9-7c9d-4ad5-9428-86a1dfbe1370",
 CellID->463689764]
}, Open  ]],
Cell[CellGroupData[{
Cell[72156, 1240, 295, 4, 53, "Subsection",ExpressionUUID->"cad2df9c-9c60-4b26-b2a3-7958097e0751"],
Cell[72454, 1246, 247, 5, 28, "Input",ExpressionUUID->"f2f795c1-e910-418b-8b20-b57d60295f47"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[72750, 1257, 219, 3, 67, "Section",ExpressionUUID->"4fbdd049-aee6-49bd-9a34-654c193450b6",
 CellID->5213286],
Cell[72972, 1262, 336, 7, 34, "Text",ExpressionUUID->"47eaccb1-0e07-4d81-9568-27b2f3f3ede8"],
Cell[73311, 1271, 749, 19, 28, "Input",ExpressionUUID->"7e964671-07c7-4661-ba55-e6d662567dac",
 CellID->446964919]
}, Open  ]],
Cell[CellGroupData[{
Cell[74097, 1295, 175, 2, 67, "Section",ExpressionUUID->"dea63eaa-b87e-4707-a91f-70c14579bb44",
 CellID->923983861],
Cell[74275, 1299, 519, 13, 56, "Text",ExpressionUUID->"4d081e09-5222-4b64-a0b8-1d9aff9c122e"],
Cell[CellGroupData[{
Cell[74819, 1316, 181, 2, 53, "Subsection",ExpressionUUID->"e1755dad-f37f-4e10-85c1-7e60fe1671c5",
 CellID->746848811],
Cell[75003, 1320, 365, 8, 48, "Input",ExpressionUUID->"14035ab0-9f37-4cbc-b0c0-094fae41b631"]
}, Open  ]],
Cell[CellGroupData[{
Cell[75405, 1333, 176, 3, 53, "Subsection",ExpressionUUID->"25afabd1-7017-48da-9b2a-d90dc3ab6f02"],
Cell[75584, 1338, 379, 9, 48, "Input",ExpressionUUID->"54a4245e-2f33-4e9f-8dfa-31548e1b040f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[76000, 1352, 172, 3, 53, "Subsection",ExpressionUUID->"1f0285d2-ce99-48fb-baa2-1a9f9d603dd9"],
Cell[76175, 1357, 1055, 32, 86, "Input",ExpressionUUID->"f1b99ea4-3ecd-4509-9043-877344fafb51"]
}, Open  ]],
Cell[CellGroupData[{
Cell[77267, 1394, 180, 3, 53, "Subsection",ExpressionUUID->"81e6f617-99bc-4ea8-920d-567fb99b8408"],
Cell[CellGroupData[{
Cell[77472, 1401, 2317, 67, 162, "Input",ExpressionUUID->"efe4cb4a-6fdb-48b8-9ff9-321da58752f1"],
Cell[79792, 1470, 777, 18, 32, "Output",ExpressionUUID->"c579dfeb-636b-462f-8aa5-78035509d14e"],
Cell[80572, 1490, 769, 18, 32, "Output",ExpressionUUID->"cf05baac-5d73-48bd-bedb-04e36fb71990"],
Cell[81344, 1510, 777, 18, 32, "Output",ExpressionUUID->"37e54cba-27a1-423e-8c34-8dbb82417004"],
Cell[82124, 1530, 775, 18, 32, "Output",ExpressionUUID->"ba19f946-972c-4fbe-b76d-dccbec981d47"]
}, Open  ]],
Cell[82914, 1551, 429, 8, 34, "Text",ExpressionUUID->"f52eed1c-0732-4ad4-abfd-caba102b15e0"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[83392, 1565, 156, 3, 67, "Section",ExpressionUUID->"146b5c3b-dcdf-485c-bfe6-0dc9e9569ae0"],
Cell[CellGroupData[{
Cell[83573, 1572, 716, 14, 28, "Input",ExpressionUUID->"34d3f7a1-65ff-4da8-929f-7bb2588bfd5f"],
Cell[84292, 1588, 730, 14, 32, "Output",ExpressionUUID->"391d8899-01d6-46cd-93f4-5cb42e9d7022"]
}, Open  ]],
Cell[CellGroupData[{
Cell[85059, 1607, 317, 6, 28, "Input",ExpressionUUID->"6c634934-c8f8-4360-a1c1-65c9bcb93251"],
Cell[85379, 1615, 476, 7, 32, "Output",ExpressionUUID->"d5cfba40-2c2a-4760-b4d3-1ead5bcda45f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[85892, 1627, 504, 10, 28, "Input",ExpressionUUID->"1b0f8033-ab67-400c-ac6a-aac1690c853b"],
Cell[86399, 1639, 630, 9, 32, "Output",ExpressionUUID->"227ef7a9-7b34-4c23-9a4e-660073a8fb81"]
}, Open  ]],
Cell[CellGroupData[{
Cell[87066, 1653, 471, 9, 28, "Input",ExpressionUUID->"d45c4731-4fd8-44c2-9b4d-af07d3e3949c"],
Cell[87540, 1664, 548, 8, 32, "Output",ExpressionUUID->"604a6f89-9e09-4acf-8692-44ea9fa80b34"]
}, Open  ]],
Cell[88103, 1675, 518, 9, 34, "Text",ExpressionUUID->"e95c0008-5d3d-4b15-ae5e-0855a841550b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[88658, 1689, 163, 3, 67, "Section",ExpressionUUID->"e32b6982-99bc-4f52-a126-e2c7d2b47584"],
Cell[88824, 1694, 742, 16, 48, "Input",ExpressionUUID->"b1f019a6-05d1-42b6-9de9-aa15737f5a19"],
Cell[CellGroupData[{
Cell[89591, 1714, 2689, 50, 124, "Input",ExpressionUUID->"7dd3f4f1-10d2-4871-b6c2-47c52b7e0cdf"],
Cell[92283, 1766, 26327, 451, 218, "Output",ExpressionUUID->"99a9ca9c-3fdc-4d33-9f86-b6377910c4fd"]
}, Open  ]],
Cell[118625, 2220, 337, 8, 78, "Text",ExpressionUUID->"c77c04ea-4744-48a0-ba7f-15313b46b8bf"]
}, Open  ]],
Cell[CellGroupData[{
Cell[118999, 2233, 195, 3, 67, "Section",ExpressionUUID->"fd892e14-b98f-441b-94d4-b13ae8c0fafc",
 CellTags->"Keywords",
 CellID->442466898],
Cell[CellGroupData[{
Cell[119219, 2240, 157, 3, 31, "Item",ExpressionUUID->"18f5ccad-1fd1-4543-b203-8d00e50c9caa"],
Cell[119379, 2245, 205, 4, 31, "Item",ExpressionUUID->"3582c908-e466-409d-af63-aa937370fb97"],
Cell[119587, 2251, 272, 4, 31, "Item",ExpressionUUID->"471a66a9-0964-4f14-9b4c-1ae62aa1253a"],
Cell[119862, 2257, 347, 5, 31, "Item",ExpressionUUID->"dc306665-26da-4ec9-8075-c149286c9308"],
Cell[120212, 2264, 156, 3, 31, "Item",ExpressionUUID->"6be3e3c4-fadc-4c4e-a48a-cdf14b83c8a6"],
Cell[120371, 2269, 216, 4, 31, "Item",ExpressionUUID->"5f8bdee3-f4fb-46c8-ae26-9e767d1d56a5"],
Cell[120590, 2275, 263, 4, 31, "Item",ExpressionUUID->"ca5e3d7e-453d-4ea6-92e0-4c8c1dc711f5"],
Cell[120856, 2281, 264, 4, 31, "Item",ExpressionUUID->"a5e31a17-c40f-48de-8300-7e9ed773c524"],
Cell[121123, 2287, 304, 5, 31, "Item",ExpressionUUID->"4751e252-0af0-490a-ae41-9a9eca9fd279"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature fvDkR9kt@PTJVDK6kTtic2Pt *)
