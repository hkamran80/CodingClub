data TreeNode a = Empty | Node a (TreeNode a) (TreeNode a)

invert :: TreeNode a -> TreeNode a
invert (Empty) = Empty
invert (Node x l r) = Node x (invert r) (invert l)

main = do
  print "incredible"
