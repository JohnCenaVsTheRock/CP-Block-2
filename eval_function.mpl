parametrize:= proc(fff)
	local c := fff;
	local `#mover(mi("c"),mo("&middot;"))` := diff(c, t);
	local `#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))` := diff(`#mover(mi("c"),mo("&middot;"))`, t);
	local Dreibein := Array([`#mover(mi("c"),mo("&middot;"))`, `#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`/Norm(`#mover(mi("c"),mo("&middot;"))`), `#mover(mi("c"),mo("&middot;"))` &x `#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`/Norm(`#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`)]);
	local s_0 := int(Norm(`#mover(mi("c"),mo("&middot;"))`), t = I_1[1] .. t_1);
	return Array([c, `#mover(mi("c"),mo("&middot;"))`, `#mover(mi("c"),mrow(mo("&middot;"),mo("&middot;")))`, Dreibein, s_0]);
end proc;