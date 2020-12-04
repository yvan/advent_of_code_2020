# janet reply key bindings
#(global-set-key (kbd "C-c C-p") 'ijanet)
#(global-set-key (kbd "C-c C-b") 'ijanet-eval-buffer)
#(global-set-key (kbd "C-c C-l") 'ijanet-eval-line)
#(global-set-key (kbd "C-c C-r") 'ijanet-eval-region)

# (with [f (file/open "1.txt")]
#       (var a @[])
#       (while true
# 	(var l (file/read f :line))
# 	(if l
# 	  (array/push a l)
# 	  (break)))
#       (print a))

(defn find-2020-thruple
  [nums]
  (var val 0)
  (loop [x :in nums]
    (loop [y :in nums]
      (loop [z :in nums]
	(if (= (int/s64 2020) (+ x y z))
	  (set val (* x y z))))))
  (print val)
  val)

(defn find-2020-pair
  [nums]
  (var val 0)
  (loop [x :in nums]
    (loop [y :in nums]
      (if (= (int/s64 2020) (+ x y))
	(set val (* x y)))))
  (print val)
  val)

(with [f (file/open "1.txt")]
      (def nums (seq [l :iterate (file/read f :line)]
		     (int/s64 (string/trim l))))
      (find-2020-pair nums)
      (find-2020-thruple nums))
