using Jive
@If VERSION >= v"1.11" module test_styledstrings_simplecolor

using Test
using StyledStrings: SimpleColor

c1 = SimpleColor(0x010203)
@test c1.value == (r=0x01, g=0x02, b=0x03)

c2 = SimpleColor(:blue)
@test sprint(show, MIME("text/plain"), c2, context = (:color => false)) == "StyledStrings.SimpleColor(blue)"
@test sprint(show, MIME("text/plain"), c2, context = (:color => true))  == "StyledStrings.SimpleColor(\e[34m■\e[39m blue)"

end # module test_styledstrings_simplecolor
