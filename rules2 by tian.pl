question(q0,'Is your GPA>=3.5?').
question(q1,'Do you have GRE score?').
%if yes, q1a
question(q1a,'Is your living cost higher US$6K?').
question(q1b,'Is your GPA between 3.0 and 3.5?').
question(q1c,'Is your living cost between US$4K and US$6K?').
question(q1d,'Is your IELTS > 6.0?').
question(q1e,'Is your GPA < 3.0?').

process0 :-
	ask(q0, Answer),
		(Answer = yes -> process1a;
		 Answer = no -> process1aaa).

process1a :-
	ask(q1, Answer),
		(Answer = yes -> process1aa;
		 Answer = no -> data('Europe',B,C,D,E,F,G,H,I,J,3.5,L,M,N,O,P,Q,R,S,T,U,V)).



process1aaa :-
	ask(q1e, Answer),
		(Answer = yes -> process1aae;
		 Answer = no -> data('Asia',B,C,D,E,F,G,H,I,J,0,L,M,N,O,P,Q,R,S,T,U,V);
			         data('Asia',B,C,D,E,F,G,H,I,J,1.0,L,M,N,O,P,Q,R,S,T,U,V);
			         data('Asia',B,C,D,E,F,G,H,I,J,2.0,L,M,N,O,P,Q,R,S,T,U,V)).

process1aae :-
	ask(q1b, Answer),
		(Answer = yes -> data('Asia',B,C,D,E,F,G,H,I,J,3.0,L,M,N,O,P,Q,R,S,T,U,V);
		Answer = no -> process1ab).

process1aa :-
	ask(q1a, Answer),
		(Answer = yes -> data('North America',B,C,D,E,F,G,H,I,J,3.5,L,M,N,O,P,Q,R,S,T,U,7000);  
			           data('North America',B,C,D,E,F,G,H,I,J,3.5,L,M,N,O,P,Q,R,S,T,U,6000);
		 Answer = no -> process1aab).

process1aab :-
	ask(q1c, Answer),
		(Answer = yes -> data('Europe',B,C,D,E,F,G,H,I,J,3.5,L,M,N,O,P,Q,R,S,T,U,4000);
		 Answer = no -> data('Europe',B,C,D,E,F,G,H,I,J,3.5,L,M,N,O,P,Q,R,S,T,U,2000)).

process1ab :-
	ask(q1a, Answer),
		(Answer = yes -> data('North America',B,C,D,E,F,G,H,I,J,3.0,L,M,N,O,P,Q,R,S,T,U,7000);  
			           data('North America',B,C,D,E,F,G,H,I,J,3.0,L,M,N,O,P,Q,R,S,T,U,6000);
		 Answer = no -> process1aac).

process1aac :-
	ask(q1c, Answer),
		(Answer = yes -> data('Asia',B,C,D,E,F,G,H,I,J,3.0,L,M,N,O,P,Q,R,S,T,U,4000);
		 Answer = no -> process1aad).

process1aad :-
	ask(q1d, Answer),
		(Answer = yes -> data('Europe',B,C,D,E,F,G,H,I,J,3.0,L,6.5,N,O,P,Q,R,S,T,U,2000);
			           data('Europe',B,C,D,E,F,G,H,I,J,3.0,L,7.0,N,O,P,Q,R,S,T,U,2000);
			           data('Europe',B,C,D,E,F,G,H,I,J,3.0,L,7.5,N,O,P,Q,R,S,T,U,2000);
		 Answer = no -> data('Asia',B,C,D,E,F,G,H,I,J,3.0,L,6.0,N,O,P,Q,R,S,T,U,2000);
			          data('Asia',B,C,D,E,F,G,H,I,J,3.0,L,5.5,N,O,P,Q,R,S,T,U,2000)).

ask( Q, A ) :-question( Q, Text ),
message_box( yesno, Text, A ).