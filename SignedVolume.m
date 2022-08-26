function volume = SignedVolume(q0, q1, p, p1)

v1 = q0 - p1;
v2 = q1 - p1;
v3 = p - p1;


volume = (1/6)*dot(v1, cross(v2, v3));

end