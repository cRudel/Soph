def fast_LCS(S1,S2):
	def fast_LCS_helper(S1,S2,memo):
		if(S1,S2) in memo:
			return memo[(S1, S2)]
		if S1=='' or S2=='':
			result = 0
		elif S1[0] == S2[0]:
			result=1+ fast_LCS_helper(S1[1:], S2[1:], memo)
		else:
			result = max(fast_LCS_helper(S1[1:], S2, memo), fast_LCS_helper(S1,S2[1:], memo))

		memo[(S1,S2)] = result
		return result
	return fast_LCS_helper(S1,S2, {})


def fastLCSWithValues(S1,S2):
	def fastLCSHelper(S1,S2,memo):
		if(S1,S2) in memo:
			return memo[(S1,S2)]

		if S1=='' or S2=='':
			result = (0,'')
		elif S1[0] == S2[0]:
			loseBoth=fastLCSHelper(S1[1:],S2[1:],memo)
			result = (1+loseBoth[0],S1[0]+loseBoth[1])
		else:
			use_S2 = fastLCSHelper(S1[1:],S2,memo)
			use_S1 = fastLCSHelper(S1,S2[1:],memo)
			result = use_S1 if use_S1[0] > use_S2[0] else use_S2
		
		memo[(S1,S2)] = result
		return result
	return fastLCSHelper(S1,S2,{})

print(fastLCSWithValues("piohagipjsifj","asdipohioasjgi"))
