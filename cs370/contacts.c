#include <stdio.h>
#include <stdlib.h>

#define ALPHABET_LENGTH 26
#define OPERATION_BUF_SIZE 5
#define NAME_BUFF_SIZE 22

typedef struct node
{
	int num_children;
	struct node *children[ALPHABET_LENGTH];

} trie_node;


int main()
{
	int numOps;
	scanf("%d", &numOps);
	
}
