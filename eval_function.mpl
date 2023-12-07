parametrize:= proc(fff)
	local c := fff;
	local `#mover(mi("c"),mo("&middot;"))` := diff(c, t);
	local `#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))` := diff(`#mover(mi("c"),mo("&middot;"))`, t);
	local Dreibein := Array([`#mover(mi("c"),mo("&middot;"))`, `#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`/Norm(`#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`), `#mover(mi("c"),mo("&middot;"))` &x `#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`/Norm(`#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`)]);
	local s_0l := int(Norm(`#mover(mi("c"),mo("&middot;"))`), t = I_1[1] .. t_1);
	local UmParametrisierteKurveneu := eval(fff, t = solve(s_0l - s_0, t_1));
	local ersteAbleitungNeu := diff(UmParametrisierteKurveneu, s_0);
	local zweiteAbleitungNeu := diff(ersteAbleitungNeu, s_0);
	local neuesDreibein := Array([ersteAbleitungNeu, zweiteAbleitungNeu/Norm(zweiteAbleitungNeu), ersteAbleitungNeu &x zweiteAbleitungNeu/Norm(zweiteAbleitungNeu)]);
	return Array([c, `#mover(mi("c"),mo("&middot;"))`, `#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`, Dreibein, s_0l, UmParametrisierteKurveneu, ersteAbleitungNeu, zweiteAbleitungNeu, neuesDreibein]);
end proc;