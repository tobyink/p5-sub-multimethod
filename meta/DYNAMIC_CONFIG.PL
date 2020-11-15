if ($] < 5.010000) {
	$meta->{prereqs}{runtime}{requires}{'MRO::Compat'} = 0;
}

my $got_sub_name = 0;
$got_sub_name++ if eval { require Sub::Util; Sub::Util->can('set_subname') };
$got_sub_name++ if eval { require Sub::Name; Sub::Name->can('subname') };

if (!$got_sub_name) {
	$meta->{prereqs}{runtime}{requires}{'Sub::Util'} = 1.40;
}
