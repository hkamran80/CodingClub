data TreeNode a = Empty | Node a TreeNode TreeNode

invert :: TreeNode -> TreeNode
invert (Empty) = Empty
invert (Node x l r) = Node x (invert r) (invert l)

main = do
  print "incredible"
