use strict;
use warnings;
use PDF::API2;

my $filename = 'example.pdf';  # Replace 'example.pdf' with your PDF file's path

# Open the PDF file
my $pdf = PDF::API2->open($filename) || die "Unable to open $filename: $!";

# Get the PDF info
my $info = $pdf->info();

# Extract creation date
my $creation_date = $info->{ModDate} || $info->{CreationDate};

# Print the creation date
print "Creation Date: $creation_date\n";