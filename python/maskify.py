# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most 
# secret question is still correct. However, since someone could look over your shoulder, you don't want that shown 
# on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# Examples

# maskify("4556364607935616") == "############5616"
# maskify(     "64607935616") ==      "#######5616"
# maskify(               "1") ==                "1"
# maskify(                "") ==                 ""

# # "What was the name of your first pet?"
# maskify("Skippy")                                   == "##ippy"
# maskify("Nananananananananananananananana Batman!") == "####################################man!"

def maskify(cc):
	if len(cc) <= 4 : return cc
	count = len(cc) - 5
	slipted_cc = list(cc)
	while count >= 0:
		slipted_cc[count] = "#"
		count -= 1

	return "".join(slipted_cc)


def maskify_simple(cc):
	return (len(cc) - 4) * "#" + cc[len(cc) - 4 : ]

print maskify_simple("3656093700") 
print maskify("64607935616")
print maskify_simple("64607935616")