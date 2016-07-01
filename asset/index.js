define([],function(){
  return {
    init:function($mod){
      $mod.find('.J_btnX').on('click',function(){
        $mod.remove();

        $mod=null;
        clearTimeout(TO);
      });
      var TO= setTimeout(function(){
        $mod && $mod.remove();
      },3000)

    }
  }
})
