If (Test-Path build) {
    Remove-Item -Recurse build
}

New-Item -ItemType Directory build > $out

pdflatex -interaction=errorstopmode -output-directory=build spec.tex
