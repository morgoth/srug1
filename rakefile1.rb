task :default => [:evince]

SRC = "srug1.tex"
RUBY_SRC = FileList["*.rb"]

rule ".tex" => ".rb" do |t|
  sh "pygmentize -f latex -o #{t.name} #{t.source}"
end

rule ".pdf" => ".tex" do |t|
  sh "pdflatex -interaction=nonstopmode #{t.source}"
end

file SRC.ext("pdf") => [SRC] + RUBY_SRC.ext("tex")

desc "Show compiled PDF in Evince."
task :evince => :pdf do
  sh "evince #{SRC.ext("pdf")}"
end
