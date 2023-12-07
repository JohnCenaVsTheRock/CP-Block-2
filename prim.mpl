primzahlen:= proc(n)
	local i, plist;
	plist := [];
	for i from 1 to n
	do
		if isprime(i) then plist := [op(plist),i]; fi;
	od;
	plist;
end;