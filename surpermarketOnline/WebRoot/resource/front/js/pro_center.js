var reduce = function(){
				var num = document.getElementById("prd_num");
				var reduce = document.getElementById("reduce");
				var count = parseInt(num.value);
				if(count <= 1){
					//在减按钮上添加disabled属性，让按钮 不 可以点击操作
					reduce.setAttribute("disabled","disabled");
					return;
				}
				num.value=--count;
			}
			//点击加按钮，实现购买数量的加操作
			var add = function(){
				var num = document.getElementById("prd_num");
				var reduce = document.getElementById("reduce");
				//获取输入框的值，但是默认是字符串类型，所以需要通过parseInt()函数进行字符串转数值的操作
				var count = parseInt(num.value);
				num.value=++count;
				if(count > 1){
					//将减按钮上的disabled属性删除，让按钮可以点击操作
					reduce.removeAttribute("disabled");
				}
				if(num.value>99){
					num.value=99;
				}
			}