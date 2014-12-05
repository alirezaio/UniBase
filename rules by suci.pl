question(q0,'do you prefer lecture with English?').
question(q1,'do you need scholarship?').
%if yes, q1a
question(q1a,'what is your current GPA?').

process0 :-
	ask(q0, Answer),
		(Answer = yes -> process1a;
		 Answer = no -> data(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,'English',Q,R,S,T,U,V)).


process1a :-
	ask(q1, Answer),
		(Answer = yes -> process1aa;
		 Answer = no -> process1ab).

process1aa :-
	ask(q1a, Answer),
		(Answer = yes -> process1aaa;
		 Answer = no -> process1aab).

process1aaa :-
	write('Hmm so so'),nl.
process1aab :-
	write('cool!'),nl.

process1ab :-
	write('orang kayaaa!'),nl.

ask( Q, A ) :-question( Q, Text ),
message_box( yesno, Text, A ).