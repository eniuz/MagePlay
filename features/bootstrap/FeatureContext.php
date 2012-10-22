<?php

use Behat\Behat\Context\BehatContext;
use MageTest\MagentoExtension\Context\MagentoContext;

class FeatureContext extends BehatContext
{
    /**
     * @param array $parameters
     */
    public function __construct(array $parameters)
    {
        $this->useContext('magento', new MagentoContext());
    }
}
