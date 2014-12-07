question(q0,'Do you prefer lecture with English?').
question(q1,'Do you need scholarship?').
question(q2,'Is your GPA>=3.5?').
question(q3,'Do you have GRE score?').
question(q4,'Is your living cost higher US$6K?').
question(q5,'Is your living cost between US$4K and US$6K?').
question(q6,'Is your GPA between 3.0 and 3.5?').
question(q7,'Is your IELTS > 6.0?').
question(q8,'Is the tuition fee higher than USD$25K?').

process0(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q0, Answer ),
		  ( Answer = yes -> process1(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
		      Answer = no -> data(A,'Asia',C,D,E,F,G,H,I,J,K,L,M,N,O,'Korean',Q,R,S,T,U,V)|
		   	  	           data(A,'Asia',C,D,E,F,G,H,I,J,K,L,M,N,O,'Chinese',Q,R,S,T,U,V)|
				      data(A,'Asia',C,D,E,F,G,H,I,J,K,L,M,N,O,'Hebrew',Q,R,S,T,U,V)|
 				        data(A,'Asia',C,D,E,F,G,H,I,J,K,L,M,N,O,'Japanese',Q,R,S,T,U,V) ).

process1(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q1, Answer ),
		  ( Answer = yes -> process2(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
		   Answer = no -> process11(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) ).

process2(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q2, Answer ),
		 ( Answer = yes -> process3(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
		    Answer = no -> process6(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) ).

process3(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q3, Answer ),
		 ( Answer = yes -> process4(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
		    Answer = no -> data(A,'Europe',C,D,E,F,G,H,I,J,3.5,L,M,0,O,'English',Q,R,S,T,U,V)|
					data(A,'Europe',C,D,E,F,G,H,I,J,3.55,L,M,0,O,'English',Q,R,S,T,U,V)|
					data(A,'Europe',C,D,E,F,G,H,I,J,3.7,L,M,0,O,'English',Q,R,S,T,U,V)|
					data(A,'North America',C,D,E,F,G,H,I,J,3.5,L,M,0,O,'English',Q,R,S,T,U,V)|
					data(A,'North America',C,D,E,F,G,H,I,J,3.55,L,M,0,O,'English',Q,R,S,T,U,V)|
					data(A,'North America',C,D,E,F,G,H,I,J,3.7,L,M,0,O,'English',Q,R,S,T,U,V)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.5,L,M,0,O,'English',Q,R,S,T,U,V)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.55,L,M,0,O,'English',Q,R,S,T,U,V)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.7,L,M,0,O,'English',Q,R,S,T,U,V) ).

process4(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q4, Answer ),
		 (  Answer = no -> process5(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
		      Answer = yes -> data(A,'North America',C,D,E,F,G,H,I,J,3.5,L,M,1,O,'English',Q,R,S,T,U,7000)|
					 data(A,'North America',C,D,E,F,G,H,I,J,3.55,L,M,1,O,'English',Q,R,S,T,U,7000)|
					 data(A,'North America',C,D,E,F,G,H,I,J,3.7,L,M,1,O,'English',Q,R,S,T,U,7000)|
					 data(A,'North America',C,D,E,F,G,H,I,J,3.5,L,M,1,O,'English',Q,R,S,T,U,6000)|
					 data(A,'North America',C,D,E,F,G,H,I,J,3.55,L,M,1,O,'English',Q,R,S,T,U,6000)|
					 data(A,'North America',C,D,E,F,G,H,I,J,3.7,L,M,1,O,'English',Q,R,S,T,U,6000) ).

process5(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q5, Answer ),
		 ( Answer = yes -> data(A,'Europe',C,D,E,F,G,H,I,J,3.5,L,M,1,O,'English',Q,R,S,T,U,4000)|
					 data(A,'Europe',C,D,E,F,G,H,I,J,3.55,L,M,1,O,'English',Q,R,S,T,U,4000)|
					 data(A,'Europe',C,D,E,F,G,H,I,J,3.7,L,M,1,O,'English',Q,R,S,T,U,4000);
		      Answer = no -> data(A,'Asia',C,D,E,F,G,H,I,J,3.5,L,M,1,O,'English',Q,R,S,T,U,2000)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.55,L,M,1,O,'English',Q,R,S,T,U,2000)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.7,L,M,1,O,'English',Q,R,S,T,U,2000) ).

process6(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q6, Answer ),
		 ( Answer = yes -> process7(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
		    Answer = no -> data(A,'Asia',C,D,E,F,G,H,I,J,2,L,M,N,O,'English',Q,R,S,T,U,V)|
					data(A,'Asia',C,D,E,F,G,H,I,J,1,L,M,N,O,'English',Q,R,S,T,U,V)|
					data(A,B,C,D,E,F,G,H,I,J,0,L,M,N,O,'English',Q,R,S,T,U,V) ).

process7(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q3, Answer ),
		 (  Answer = no -> process8(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
 		      Answer = yes -> data(A,'Asia',C,D,E,F,G,H,I,J,3.3,L,M,1,O,'English',Q,R,S,T,U,V)|
				 	  data(A,'Asia',C,D,E,F,G,H,I,J,3,L,M,1,O,'English',Q,R,S,T,U,V)|
					  data(A,'Europe',C,D,E,F,G,H,I,J,3.3,L,M,1,O,'English',Q,R,S,T,U,V)|
					  data(A,'Europe',C,D,E,F,G,H,I,J,3,L,M,1,O,'English',Q,R,S,T,U,V) ).

process8(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q4, Answer ),
		 ( Answer = no -> process9(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
		      Answer = yes -> data(A,'North America',C,D,E,F,G,H,I,J,3.3,L,M,0,O,'English',Q,R,S,T,U,7000)|
					  data(A,'North America',C,D,E,F,G,H,I,J,3,L,M,0,O,'English',Q,R,S,T,U,7000)|
					  data(A,'North America',C,D,E,F,G,H,I,J,3.3,L,M,0,O,'English',Q,R,S,T,U,6000)|
					  data(A,'North America',C,D,E,F,G,H,I,J,3,L,M,0,O,'English',Q,R,S,T,U,6000) ).	

process9(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q5, Answer ),
		 ( Answer = no -> process10(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V);
	                  Answer = yes -> data(A,'Asia',C,D,E,F,G,H,I,J,3.3,L,M,0,O,'English',Q,R,S,T,U,4000)|
					  data(A,'Asia',C,D,E,F,G,H,I,J,3,L,M,0,O,'English',Q,R,S,T,U,4000) ).

process10(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q7, Answer ),
		 ( Answer = no -> data(A,'Asia',C,D,E,F,G,H,I,J,3.5,L,6,1,O,'English',Q,R,S,T,U,2000)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.55,L,6,1,O,'English',Q,R,S,T,U,2000)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.7,L,6,1,O,'English',Q,R,S,T,U,2000)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.5,L,5.5,1,O,'English',Q,R,S,T,U,2000)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.55,L,5.5,1,O,'English',Q,R,S,T,U,2000)|
					data(A,'Asia',C,D,E,F,G,H,I,J,3.7,L,5.5,1,O,'English',Q,R,S,T,U,2000);
		      Answer = yes -> data(A,'Europe',C,D,E,F,G,H,I,J,3.3,L,6.5,0,O,'English',Q,R,S,T,U,2000)|
					  data(A,'Europe',C,D,E,F,G,H,I,J,3,L,6.5,0,O,'English',Q,R,S,T,U,2000)|
					  data(A,'Europe',C,D,E,F,G,H,I,J,3.3,L,7,0,O,'English',Q,R,S,T,U,2000)|
					  data(A,'Europe',C,D,E,F,G,H,I,J,3,L,7,0,O,'English',Q,R,S,T,U,2000)|
					  data(A,'Europe',C,D,E,F,G,H,I,J,3.3,L,7.5,0,O,'English',Q,R,S,T,U,2000)|
					  data(A,'Europe',C,D,E,F,G,H,I,J,3,L,7.5,0,O,'English',Q,R,S,T,U,2000) ).

process11(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V) :-
	ask( q8, Answer ),
		 ( Answer = no -> data(A,'Asia',C,D,E,F,G,H,I,J,K,L,M,N,O,'English',Q,R,'US$ 5K - 10k',T,U,V)|
					data(A,'Asia',C,D,E,F,G,H,I,J,K,L,M,N,O,'English',Q,R,'US$ 10K - 15K',T,U,V);
		      Answer = yes -> data(A,'Europe',C,D,E,F,G,H,I,J,K,L,M,N,O,'English',Q,R,'US$ 25k+',T,U,V) ).					

ask( Q, A ) :-
	question( Q, Text ),
	message_box( yesno, Text, A ).