using Jive
@If VERSION >= v"1.11" module test_styledstrings_faces

using Test
using StyledStrings: FACES, Face, withfaces, resetfaces!, loadface!, getface

face1 = Face()
@test face1.foreground === nothing
face2 = Face(foreground=:cyan, underline=true)
@test face2.foreground.value === :cyan
@test merge(face1, face2) == face2

@test FACES.current[][:default] == getface()
@test FACES.default[:success].foreground.value === :green

end # module test_styledstrings_faces
