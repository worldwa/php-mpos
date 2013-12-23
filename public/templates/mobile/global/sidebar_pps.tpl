                <table width="100%">
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr>
                      <td colspan="2"><b><u>统计</u></b></td>
                    </tr>
                    <tr>
                      <td><b>我的算力</b></td>
                      <td align="right">{$GLOBAL.userdata.hashrate|number_format} {$GLOBAL.hashunits.personal}</td>
                    </tr>
                    <tr>
                      <td><b>Share速率</b></td>
                      <td align="right">{$GLOBAL.userdata.sharerate|number_format:"2"} S/s</td>
                    </tr>
                    <tr>
                      <td><b>PPS 值</b></td>
                      <td align="right">{$GLOBAL.ppsvalue}</td>
                    </tr>

                    <tr>
                      <td><b>拒绝率</b></td>
                      <td align="right">{($GLOBAL.userdata.shares.invalid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%</td>
                    </tr>

                    <tr><td colspan="2">&nbsp;</td></tr>
                    {*<tr>*}
                      {*<td colspan="2"><b><u>Round Shares</u></b></td>*}
                    {*</tr>*}
                    {*<tr>*}
                      {*<td><b>Pool Valid</b></td>*}
                      {*<td align="right">{$GLOBAL.roundshares.valid|number_format}</td>*}
                    {*</tr>*}
                    {*<tr>*}
                      {*<td><b>Pool Invalid</b></td>*}
                      {*<td align="right"><i>{$GLOBAL.roundshares.invalid|number_format}</i>{if $GLOBAL.roundshares.valid > 0}<font size='1px'> ({($GLOBAL.roundshares.invalid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%)</font>{/if}</td>*}
                    {*</tr>*}
                    {*<tr>*}
                      {*<td><b>Your Invalid</b></td>*}
                      {*<td align="right"><i>{$GLOBAL.userdata.shares.invalid|number_format}</i>{if $GLOBAL.roundshares.valid > 0}<font size='1px'> ({($GLOBAL.userdata.shares.invalid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%)</font>{/if}</td>*}
                    {*</tr>*}
                    {*<tr><td colspan="2">&nbsp;</td></tr>*}
                    <tr><td colspan="2"><b><u>{$GLOBAL.config.currency} 收入预估</u></b></td></tr>
                    <tr>
                      <td><b>24小时</b></td>
                      <td align="right">{$GLOBAL.userdata.estimates.hours24}</td>
                    </tr>
                    <tr>
                      <td><b>7天</b></td>
                      <td align="right">{$GLOBAL.userdata.estimates.days7}</td>
                    </tr>
                    <tr>
                      <td><b>14天</b></td>
                      <td align="right">{$GLOBAL.userdata.estimates.days14}</td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr><td colspan="2"><b><u>{$GLOBAL.config.currency} 账户结余</u></b></td></tr>
                    <tr><td>已确认</td><td align="right"><b>{$GLOBAL.userdata.balance.confirmed|default:"0"|number_format:"3"}</td></tr>
                    <tr><td>未确认</td><td align="right"><b>{$GLOBAL.userdata.balance.unconfirmed|default:"0"|number_format:"3"}</td></tr>
                  </table>
