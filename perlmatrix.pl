use strict;
use warnings;
my $column;
print "Enter the Row:\n";
my $row = <>;


print "Enter the Column:\n";
 $column = <>;


my @matrix1;
my @matrix2;
my $ch;
my @m1;
my @m2;
my @resultMat;


print "Enter the Matrix one:\n";
for(my $i = 0;$i < $row; $i++)
{
	for(my $j = 0;$j < $column; $j++)
	{
		$matrix1[$i][$j]=<>;
	}
}

print "Enter the Matrix Two:\n";
for(my $i = 0;$i < $row; $i++)
{
	for(my $j=0;$j<$column;$j++)
	{
		$matrix2[$i][$j]=<>;
	}
}

print "\n";

$ch=0;
do
{
	print "\n";
	print "1.Addition\n";
	print "2.subtraction\n";
	print "3.Multiplication\n";
	print "4.Print Matrix.\n";
	print "5.Exit\n";
	print "\n";

	use experimental qw(switch);
	chomp($ch = <>);
	given($ch)
	{
		when('4')
		{
			printmatrix(\@matrix1,\@matrix2);
		}
		when('1')
		{
			Addition(\@matrix1,\@matrix2);
		}
	}

sub printmatrix
{
	my ($matrix1,$matrix2)=@_;

	@m1=@{ $matrix1 };
	@m2=@{ $matrix2 };

	print "Matrix one:\n";
	for(my $i=0;$i<@m1;$i++)
	{
		for(my $j=0;$j<@m1;$j++)
		{
			print "$m1[$i][$j]";
		}
		print "\n";
	}

	print "Matrix Two:\n";
	for(my $i=0;$i<@m2;$i++)
	{
		for(my $j=0;$j<@m2;$j++)
		{
			print "$m2[$i][$j]";
		}

		print "\n"; 
	}
}

sub Addition
{
	my ($matrix1,$matrix2)=@_;

	@m1=@{ $matrix1 };
	@m2=@{ $matrix2 };

	for (my $i = 0; $i < @m1; $i++) {
		for (my $j = 0; $j < @m1; $j++) {
			$resultMat[$i][$j] = $m1[$i][$j] + $m2[$i][$j];
		}
	}

	print "Addtion is : \n";
	for (my $i = 0; $i < @m1; $i++) {
		for (my $j = 0; $j < @m1; $j++) {
			print "$resultMat[$i][$j]\t";
		}
		print "\n";
	}

}

}