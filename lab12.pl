/* Facts */

edge(makkah, madinah).
edge(madinah, makkah).

edge(madinah, taif).
edge(madinah, tabuk).

edge(al_qatif, madinah).

edge(al_qatif, dammam).
edge(dammam, al_qatif).

edge(taif, dammam).

edge(tabuk, taif).

edge(makkah, riyadh).

edge(dammam, riyadh).
edge(riyadh, dammam).


/* Path Finding */

travel(Start, Finish, Path) :-
    route(Start, Finish, [Start], P),
    reverse(P, Path).

route(X, X, Visited, Visited).

route(X, Y, Visited, Path) :-
    edge(X, Z),
    \+ member(Z, Visited),
    route(Z, Y, [Z|Visited], Path).
