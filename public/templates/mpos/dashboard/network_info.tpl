         <tr>
           <td colspan="2"><b><u>全网信息</u></b></td>
         </tr>
         <tr>
           <td><b>难度</b></td>
           <td id="b-diff" class="right">{$NETWORK.difficulty}</td>
         </tr>
{if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
         <tr>
           <td><b>预估下次难度</b></td>
           <td id="b-nextdiff" class="right">{$NETWORK.EstNextDifficulty} {if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}({$NETWORK.BlocksUntilDiffChange}块后调整){/if}</td>
         </tr>
         <tr>
           <td><b>预估每个块的产生时间</b></td>
           <td id="b-esttimeperblock" class="right">{$NETWORK.EstTimePerBlock|seconds_to_words}</td>
         </tr>
         <tr>
           <td><b>当前块</b></td>
           <td id="b-nblock" class="right">{$NETWORK.block}</td>
         </tr>
{/if}
