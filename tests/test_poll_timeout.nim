## Native regression: public Client.timeout is expressed in seconds while
## libzmq poll() requires a millisecond interval.
import ../src/starRouterpkg/client

doAssert pollTimeoutMilliseconds(1) == 1000
doAssert pollTimeoutMilliseconds(10) == 10000
doAssert pollTimeoutMilliseconds(60) == 60000
doAssert pollTimeoutMilliseconds(0) == 0
doAssert pollTimeoutMilliseconds(high(int)) == int(high(cint))
echo "[OK] client poll interval preserves second-based timeout units"
