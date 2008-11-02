task :default => [:evince]

SRC = ["srug1.tex"]

rule ".pdf" => ".tex" do |t|
  sh "pdflatex -interaction=nonstopmode #{t.source}"
end

file SRC.ext("pdf") => SRC

desc "Compile PDF"
task :evince => SRC.ext("pdf")

desc "Show compiled PDF in Evince."
task :evince => :pdf do
  sh "evince #{SRC.ext("pdf")}"
end
