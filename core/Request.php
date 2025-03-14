<?php

namespace app\core;

class Request
{
    public function path()
    {
        $path = $_SERVER['REQUEST_URI'] ?? '/';
        $position = strpos($path, '?');

        if ($position === false)
            return $path;

        return substr($path, 0, $position);
    }

    public function requestMethod(): string
    {
        return strtolower($_SERVER['REQUEST_METHOD']);
    }

    public function all(): array
    {
        return $_REQUEST;
    }

    public function one($parameterName)
    {
        return $_REQUEST[$parameterName] ?? null;
    }
}