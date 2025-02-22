using Jive
@If VERSION >= v"1.11" module test_styledstrings_annotations

using Test
using StyledStrings: AnnotatedString, AnnotatedChar, AnnotatedIOBuffer, annotations

@test isempty(annotations(AnnotatedString("abc")))
@test isempty(annotations(AnnotatedChar('a')))

aio = AnnotatedIOBuffer()
println(aio, "hello")
@test read(seekstart(aio), AnnotatedString) == "hello\n"

end # module test_styledstrings_annotations
